var fs = require('fs'),
    args = require('yargs').argv,
    path = require('path'),
    gulp = require('gulp'),
    del = require('del'),
    $ = require('gulp-load-plugins')(),
    browserSync = require('browser-sync').create(),
    stat = require('pify')(fs.stat),
    saveLicense = require('uglify-save-license'),
    ansicolors = require('ansi-colors'),
    log = require('fancy-log');


// Helps to detect changes in layout or templates
// included from other files and ignore gulp-changed
// (see tasks 'templates:views' and 'watch')
var isLayoutOrTpl = false;

// production mode (--prod flag)
var isProduction = !!args.prod;
// styles sourcemaps (--sourcemap[s] flag)
var useSourceMaps = !!args.sourcemaps;

if (isProduction)
    log('Building for production...');
if (useSourceMaps)
    log('Building with Sourcemaps...');

// MAIN PATHS
var paths = {
    build: '../app/',
    markup: 'pug/',
    styles: 'sass/',
    scripts: 'js/',
    images: 'img/',
    server: 'server/' // static assets
}

// VENDOR CONFIG
var vendor = {
    app: {
        source: require('./vendor.json'),
        dest: paths.build + 'vendor'
    }
};

// SOURCES CONFIG
var source = {
    scripts: {
        app: [
            paths.scripts + 'modules/common/wrapper.js',
            paths.scripts + 'app.init.js',
            paths.scripts + 'modules/**/*.js',
            paths.scripts + 'custom/**/*.js'
        ]
    },
    templates: {
        views: {
            files: [paths.markup + 'views/**/[^_]*.pug'],
            watch: [paths.markup + '**/*.pug']
        }
    },
    styles: {
        app: [paths.styles + '*.*'],
        themes: [paths.styles + 'themes/*'],
        watch: [paths.styles + '**/*', '!' + paths.styles + 'themes/*']
    },
    images: [paths.images + '**/*'],
    favicon: ['favicon.ico'],
    server: [paths.server + '**/*']
};

// BUILD TARGET CONFIG
var build = {
    scripts: {
        app: {
            main: 'app.js',
            dir: paths.build + 'js'
        }
    },
    styles: paths.build + 'css',
    templates: {
        views: paths.build
    },
    images: paths.build + 'img',
    favicon: paths.build,
    server: paths.build + 'server'
};

// PLUGINS OPTIONS

var jsbeautifierOpts = {
    indent_char: ' ',
    indent_size: 3,
    unformatted: ['sub', 'sup', 'b', 'i', 'u', 'pre', 'code']
};

var vendorUglifyOpts = {
    output: {
        comments: false,
    },
    mangle: {
        reserved: ['$super'] // rickshaw requires this
    }
};

var cssnanoOpts = {
    safe: true,
    discardUnused: false, // no remove @font-face
    reduceIdents: false, // no change on @keyframes names
    zindex: false // no change z-index
}

//---------------
// TASKS
//---------------


// JS APP
gulp.task('scripts:app', function() {
    log('Building scripts..');
    // Minify and copy all JavaScript (except vendor scripts)
    return gulp.src(source.scripts.app)
        .pipe($.jsvalidate())
        .on('error', handleError)
        .pipe($.if(useSourceMaps, $.sourcemaps.init()))
        .pipe($.concat(build.scripts.app.main))
        .on('error', handleError)
        .pipe($.if(isProduction, $.uglify({
            output: {
                comments: saveLicense
            }
        })))
        .on('error', handleError)
        .pipe($.if(useSourceMaps, $.sourcemaps.write()))
        .pipe(gulp.dest(build.scripts.app.dir))
        .pipe(browserSync.stream())
});

// VENDOR BUILD
// copy file from npm folder into the app vendor folder
gulp.task('vendor', function() {
    log('Copying vendor assets..');

    var jsFilter = $.filter('**/*.js', {
        restore: true
    });
    var cssFilter = $.filter('**/*.css', {
        restore: true
    });

    return gulp.src(vendor.app.source, {
            base: 'node_modules'
        })
        .pipe(jsFilter)
        .pipe($.if(isProduction, $.uglify(vendorUglifyOpts)))
        .on('error', handleError)
        .pipe(jsFilter.restore)
        .pipe(cssFilter)
        .pipe($.if(isProduction, $.cssnano(cssnanoOpts)))
        .pipe(cssFilter.restore)
        .pipe(gulp.dest(vendor.app.dest));

});

// APP STYLES
gulp.task('styles:app', function() {
    log('Building application styles..');
    return gulp.src(source.styles.app)
        .pipe($.if(useSourceMaps, $.sourcemaps.init()))
        .pipe($.sass())
        .on('error', handleError)
        .pipe($.if(isProduction, $.cssnano(cssnanoOpts)))
        .pipe($.if(useSourceMaps, $.sourcemaps.write()))
        .pipe(gulp.dest(build.styles))
        .pipe(browserSync.stream())
});

// APP RTL
gulp.task('styles:app:rtl', function() {
    log('Building application RTL styles..');
    return gulp.src(source.styles.app)
        .pipe($.if(useSourceMaps, $.sourcemaps.init()))
        .pipe($.sass())
        .on('error', handleError)
        .pipe($.rtlcss())
        .pipe($.if(isProduction, $.cssnano(cssnanoOpts)))
        .pipe($.if(useSourceMaps, $.sourcemaps.write()))
        .pipe($.rename(function(path) {
            path.basename += '-rtl';
            return path;
        }))
        .pipe(gulp.dest(build.styles))
        .pipe(browserSync.stream())
});

// THEMES
gulp.task('styles:themes', function() {
    log('Building application theme styles..');
    return gulp.src(source.styles.themes)
        .pipe($.sass())
        .on('error', handleError)
        .pipe(gulp.dest(build.styles))
        .pipe(browserSync.stream())
});


// Favicon
gulp.task('copy:favicon', function() {
    log('Copying favicon..');
    return gulp.src(source.favicon)
        .pipe(gulp.dest(build.favicon));
});

// Images
gulp.task('copy:images', gulp.parallel('copy:favicon', function() {
    log('Copying images..');
    return gulp.src(source.images)
        .pipe(gulp.dest(build.images));
}));

// Copy static assets
gulp.task('copy:static', function() {
    log('Copying static assets..');
    return gulp.src(source.server)
        .pipe(gulp.dest(build.server));
});

// PUG (ex JADE) VIEWS
gulp.task('templates:views', function() {
    log('Building views..');
    return gulp.src(source.templates.views.files)
        .pipe($.if(!isProduction && !isLayoutOrTpl, $.changed(build.templates.views, {
            extension: '.html',
            hasChanged: fileHasChanged
        })))
        .pipe($.pug({
            locals: require('./sidebar.json')
        }))
        .on('error', handleError)
        .pipe($.jsbeautifier(jsbeautifierOpts))
        .pipe($.flatten())
        .pipe(gulp.dest(build.templates.views));
});


//---------------
// WATCH
//---------------

function reload(done) {
    browserSync.reload();
    done();
}

// Rerun the task when a file changes
gulp.task('watch', function() {
    log('Watching source files..');

    gulp.watch(source.scripts.app, gulp.task('scripts:app'));
    gulp.watch(source.styles.watch, gulp.parallel('styles:app', 'styles:app:rtl'));
    gulp.watch(source.styles.themes, gulp.task('styles:themes'));
    gulp.watch(source.templates.views.watch, gulp.series('templates:views', reload))
        .on('change', function(file) {
            // Each time a pug file changes, check if layout or template
            // if so, activate flag to ignore changed control since we don't have
            // counterpart file to detect file time differences
            isLayoutOrTpl = false;
            var fname = path.basename(file);
            if (fname.charAt(0) === '_')
                isLayoutOrTpl = true;
        });

});

// Serve files with auto reaload
gulp.task('browsersync', function(cb) {
    log('Starting BrowserSync..');

    browserSync.init({
        notify: false,
        server: {
            baseDir: '..'
        }
    }, cb);

});

//---------------
// MAIN TASKS
//---------------

gulp.task('assets', gulp.parallel(
    'scripts:app',
    'styles:app',
    'styles:app:rtl',
    'styles:themes',
    'templates:views',
    'copy:images',
    'copy:static'
));

// build for production (minify)
gulp.task('build', gulp.series(
    'vendor',
    'assets'
));

// Server for development
gulp.task('serve', gulp.series(
    'vendor',
    'assets',
    'browsersync',
    'watch'
));

// default to build
gulp.task('default', gulp.task('build'));


// Remove all files from the build paths
gulp.task('clean', function(done) {
    var delconfig = [].concat(
        paths.build
    );

    log('Cleaning: ' + ansicolors.blue(delconfig));
    // force: clean files outside current directory
    del(delconfig, {
        force: true
    }).then(function() {
        log('Delete done.');
        done();
    });
});

/////////////////////

// Error handler
function handleError(err) {
    log(err.toString());
    this.emit('end');
}

// log to console using
function log(msg) {
    log(ansicolors.blue(msg));
}

// We are using a different folder structure in source and destiny.
// with this function we compare each file time to
// detect what have changed no matter their location
// (Compares one by one -> pug vs html)
function fileHasChanged(stream, sourceFile, destPath) {
    var destPathTo = build.templates.views;
    var modDestPath = destPathTo + path.basename(destPath);

    return stat(modDestPath)
        .then(function(targetStat) {
            if (sourceFile.stat.mtime > targetStat.mtime) {
                stream.push(sourceFile);
            }
        });
};