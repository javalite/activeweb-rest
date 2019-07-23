<!DOCTYPE html>

<html lang="en">
<#include "header.ftl" >


<body>
<div class="wrapper">
    <!-- top navbar-->
    <header class="topnavbar-wrapper">
        <!-- START Top Navbar-->
        <nav class="navbar topnavbar">
            <!-- START navbar header-->
            <div class="navbar-header"><a class="navbar-brand" href="#/">
                    <div class="brand-logo"><img class="img-fluid" src="img/logo.png" alt="App Logo"></div>
                    <div class="brand-logo-collapsed"><img class="img-fluid" src="img/logo-single.png" alt="App Logo"></div>
                </a></div><!-- END navbar header-->
            <!-- START Left navbar-->
            <ul class="navbar-nav mr-auto flex-row">
                <li class="nav-item">
                    <!-- Button used to collapse the left sidebar. Only visible on tablet and desktops--><a class="nav-link d-none d-md-block d-lg-block d-xl-block" href="#" data-trigger-resize="" data-toggle-state="aside-collapsed"><em class="fas fa-bars"></em></a><!-- Button to show/hide the sidebar on mobile. Visible on mobile only.--><a class="nav-link sidebar-toggle d-md-none" href="#" data-toggle-state="aside-toggled" data-no-persist="true"><em class="fas fa-bars"></em></a></li><!-- START User avatar toggle-->
                <li class="nav-item d-none d-md-block">
                    <!-- Button used to collapse the left sidebar. Only visible on tablet and desktops--><a class="nav-link" id="user-block-toggle" href="#user-block" data-toggle="collapse"><em class="icon-user"></em></a></li><!-- END User avatar toggle-->
                <!-- START lock screen-->
                <li class="nav-item d-none d-md-block"><a class="nav-link" href="lock.html" title="Lock screen"><em class="icon-lock"></em></a></li><!-- END lock screen-->
            </ul><!-- END Left navbar-->
            <!-- START Right Navbar-->
            <ul class="navbar-nav flex-row">
                <!-- Search icon-->
                <li class="nav-item"><a class="nav-link" href="#" data-search-open=""><em class="icon-magnifier"></em></a></li><!-- Fullscreen (only desktops)-->
                <li class="nav-item d-none d-md-block"><a class="nav-link" href="#" data-toggle-fullscreen=""><em class="fas fa-expand"></em></a></li><!-- START Alert menu-->
                <li class="nav-item dropdown dropdown-list"><a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="#" data-toggle="dropdown"><em class="icon-bell"></em><span class="badge badge-danger">11</span></a><!-- START Dropdown menu-->
                    <div class="dropdown-menu dropdown-menu-right animated flipInX">
                        <div class="dropdown-item">
                            <!-- START list group-->
                            <div class="list-group">
                                <!-- list item-->
                                <div class="list-group-item list-group-item-action">
                                    <div class="media">
                                        <div class="align-self-start mr-2"><em class="fab fa-twitter fa-2x text-info"></em></div>
                                        <div class="media-body">
                                            <p class="m-0">New followers</p>
                                            <p class="m-0 text-muted text-sm">1 new follower</p>
                                        </div>
                                    </div>
                                </div><!-- list item-->
                                <div class="list-group-item list-group-item-action">
                                    <div class="media">
                                        <div class="align-self-start mr-2"><em class="fas fa-envelope fa-2x text-warning"></em></div>
                                        <div class="media-body">
                                            <p class="m-0">New e-mails</p>
                                            <p class="m-0 text-muted text-sm">You have 10 new emails</p>
                                        </div>
                                    </div>
                                </div><!-- list item-->
                                <div class="list-group-item list-group-item-action">
                                    <div class="media">
                                        <div class="align-self-start mr-2"><em class="fas fa-tasks fa-2x text-success"></em></div>
                                        <div class="media-body">
                                            <p class="m-0">Pending Tasks</p>
                                            <p class="m-0 text-muted text-sm">11 pending task</p>
                                        </div>
                                    </div>
                                </div><!-- last list item-->
                                <div class="list-group-item list-group-item-action"><span class="d-flex align-items-center"><span class="text-sm">More notifications</span><span class="badge badge-danger ml-auto">14</span></span></div>
                            </div><!-- END list group-->
                        </div>
                    </div><!-- END Dropdown menu-->
                </li><!-- END Alert menu-->
                <!-- START Offsidebar button-->
                <li class="nav-item"><a class="nav-link" href="#" data-toggle-state="offsidebar-open" data-no-persist="true"><em class="icon-notebook"></em></a></li><!-- END Offsidebar menu-->
            </ul><!-- END Right Navbar-->
            <!-- START Search form-->
            <form class="navbar-form" role="search" action="search.html">
                <div class="form-group"><input class="form-control" type="text" placeholder="Type and hit enter ...">
                    <div class="fas fa-times navbar-form-close" data-search-dismiss=""></div>
                </div><button class="d-none" type="submit">Submit</button>
            </form><!-- END Search form-->
        </nav><!-- END Top Navbar-->
    </header><!-- sidebar-->
    <aside class="aside-container">
        <!-- START Sidebar (left)-->
        <div class="aside-inner">
            <nav class="sidebar" data-sidebar-anyclick-close="">
                <!-- START sidebar nav-->
                <ul class="sidebar-nav">
                    <!-- START user info-->
                    <li class="has-user-block">
                        <div class="collapse" id="user-block">
                            <div class="item user-block">
                                <!-- User picture-->
                                <div class="user-block-picture">
                                    <div class="user-block-status"><img class="img-thumbnail rounded-circle" src="img/user/02.jpg" alt="Avatar" width="60" height="60">
                                        <div class="circle bg-success circle-lg"></div>
                                    </div>
                                </div><!-- Name and Job-->
                                <div class="user-block-info"><span class="user-block-name">Hello, Mike</span><span class="user-block-role">Designer</span></div>
                            </div>
                        </div>
                    </li><!-- END user info-->
                    <!-- Iterates over all sidebar items-->
                    <li class="nav-heading "><span data-localize="sidebar.heading.HEADER">Main Navigation</span></li>
                    <li class=" "><a href="#dashboard" title="Dashboard" data-toggle="collapse">
                            <div class="float-right badge badge-success">3</div><em class="icon-speedometer"></em><span data-localize="sidebar.nav.DASHBOARD">Dashboard</span>
                        </a>
                        <ul class="sidebar-nav sidebar-subnav collapse" id="dashboard">
                            <li class="sidebar-subnav-header">Dashboard</li>
                            <li class=" active"><a href="dashboard.html" title="Dashboard v1"><span>Dashboard v1</span></a></li>
                            <li class=" "><a href="dashboard_v2.html" title="Dashboard v2"><span>Dashboard v2</span></a></li>
                            <li class=" "><a href="dashboard_v3.html" title="Dashboard v3"><span>Dashboard v3</span></a></li>
                        </ul>
                    </li>
                    <li class=" "><a href="widgets.html" title="Widgets">
                            <div class="float-right badge badge-success">30</div><em class="icon-grid"></em><span data-localize="sidebar.nav.WIDGETS">Widgets</span>
                        </a></li>
                    <li class=" "><a href="#layout" title="Layouts" data-toggle="collapse"><em class="icon-layers"></em><span>Layouts</span></a>
                        <ul class="sidebar-nav sidebar-subnav collapse" id="layout">
                            <li class="sidebar-subnav-header">Layouts</li>
                            <li class=" "><a href="dashboard_h.html" title="Horizontal"><span>Horizontal</span></a></li>
                        </ul>
                    </li>
                    <li class="nav-heading "><span data-localize="sidebar.heading.COMPONENTS">Components</span></li>
                    <li class=" "><a href="#elements" title="Elements" data-toggle="collapse"><em class="icon-chemistry"></em><span data-localize="sidebar.nav.element.ELEMENTS">Elements</span></a>
                        <ul class="sidebar-nav sidebar-subnav collapse" id="elements">
                            <li class="sidebar-subnav-header">Elements</li>
                            <li class=" "><a href="buttons.html" title="Buttons"><span data-localize="sidebar.nav.element.BUTTON">Buttons</span></a></li>
                            <li class=" "><a href="notifications.html" title="Notifications"><span data-localize="sidebar.nav.element.NOTIFICATION">Notifications</span></a></li>
                            <li class=" "><a href="sweetalert.html" title="Sweet Alert"><span>Sweet Alert</span></a></li>
                            <li class=" "><a href="carousel.html" title="Carousel"><span data-localize="sidebar.nav.element.INTERACTION">Carousel</span></a></li>
                            <li class=" "><a href="spinners.html" title="Spinners"><span data-localize="sidebar.nav.element.SPINNER">Spinners</span></a></li>
                            <li class=" "><a href="dropdown-animations.html" title="Dropdown"><span data-localize="sidebar.nav.element.DROPDOWN">Dropdown</span></a></li>
                            <li class=" "><a href="nestable.html" title="Nestable"><span>Nestable</span></a></li>
                            <li class=" "><a href="sortable.html" title="Sortable"><span>Sortable</span></a></li>
                            <li class=" "><a href="cards.html" title="Cards"><span data-localize="sidebar.nav.element.CARDS">Cards</span></a></li>
                            <li class=" "><a href="portlets.html" title="Portlets"><span data-localize="sidebar.nav.element.PORTLET">Portlets</span></a></li>
                            <li class=" "><a href="grid.html" title="Grid"><span data-localize="sidebar.nav.element.GRID">Grid</span></a></li>
                            <li class=" "><a href="grid-masonry.html" title="Grid Masonry"><span data-localize="sidebar.nav.element.GRID_MASONRY">Grid Masonry</span></a></li>
                            <li class=" "><a href="typo.html" title="Typography"><span data-localize="sidebar.nav.element.TYPO">Typography</span></a></li>
                            <li class=" "><a href="icons-font.html" title="Font Icons">
                                    <div class="float-right badge badge-success">+400</div><span data-localize="sidebar.nav.element.FONT_ICON">Font Icons</span>
                                </a></li>
                            <li class=" "><a href="icons-weather.html" title="Weather Icons">
                                    <div class="float-right badge badge-success">+100</div><span data-localize="sidebar.nav.element.WEATHER_ICON">Weather Icons</span>
                                </a></li>
                            <li class=" "><a href="colors.html" title="Colors"><span data-localize="sidebar.nav.element.COLOR">Colors</span></a></li>
                        </ul>
                    </li>
                    <li class=" "><a href="#forms" title="Forms" data-toggle="collapse"><em class="icon-note"></em><span data-localize="sidebar.nav.form.FORM">Forms</span></a>
                        <ul class="sidebar-nav sidebar-subnav collapse" id="forms">
                            <li class="sidebar-subnav-header">Forms</li>
                            <li class=" "><a href="form-standard.html" title="Standard"><span data-localize="sidebar.nav.form.STANDARD">Standard</span></a></li>
                            <li class=" "><a href="form-extended.html" title="Extended"><span data-localize="sidebar.nav.form.EXTENDED">Extended</span></a></li>
                            <li class=" "><a href="form-validation.html" title="Validation"><span data-localize="sidebar.nav.form.VALIDATION">Validation</span></a></li>
                            <li class=" "><a href="form-wizard.html" title="Wizard"><span>Wizard</span></a></li>
                            <li class=" "><a href="form-upload.html" title="Upload"><span>Upload</span></a></li>
                            <li class=" "><a href="form-xeditable.html" title="xEditable"><span>xEditable</span></a></li>
                            <li class=" "><a href="form-imagecrop.html" title="Cropper"><span>Cropper</span></a></li>
                        </ul>
                    </li>
                    <li class=" "><a href="#charts" title="Charts" data-toggle="collapse"><em class="icon-graph"></em><span data-localize="sidebar.nav.chart.CHART">Charts</span></a>
                        <ul class="sidebar-nav sidebar-subnav collapse" id="charts">
                            <li class="sidebar-subnav-header">Charts</li>
                            <li class=" "><a href="chart-flot.html" title="Flot"><span data-localize="sidebar.nav.chart.FLOT">Flot</span></a></li>
                            <li class=" "><a href="chart-radial.html" title="Radial"><span data-localize="sidebar.nav.chart.RADIAL">Radial</span></a></li>
                            <li class=" "><a href="chart-js.html" title="Chart JS"><span>Chart JS</span></a></li>
                            <li class=" "><a href="chart-rickshaw.html" title="Rickshaw"><span>Rickshaw</span></a></li>
                            <li class=" "><a href="chart-morris.html" title="MorrisJS"><span>MorrisJS</span></a></li>
                            <li class=" "><a href="chart-chartist.html" title="Chartist"><span>Chartist</span></a></li>
                        </ul>
                    </li>
                    <li class=" "><a href="#tables" title="Tables" data-toggle="collapse"><em class="icon-grid"></em><span data-localize="sidebar.nav.table.TABLE">Tables</span></a>
                        <ul class="sidebar-nav sidebar-subnav collapse" id="tables">
                            <li class="sidebar-subnav-header">Tables</li>
                            <li class=" "><a href="table-standard.html" title="Standard"><span data-localize="sidebar.nav.table.STANDARD">Standard</span></a></li>
                            <li class=" "><a href="table-extended.html" title="Extended"><span data-localize="sidebar.nav.table.EXTENDED">Extended</span></a></li>
                            <li class=" "><a href="table-datatable.html" title="DataTables"><span data-localize="sidebar.nav.table.DATATABLE">DataTables</span></a></li>
                            <li class=" "><a href="table-bootgrid.html" title="BootGrid"><span>BootGrid</span></a></li>
                        </ul>
                    </li>
                    <li class=" "><a href="#maps" title="Maps" data-toggle="collapse"><em class="icon-map"></em><span data-localize="sidebar.nav.map.MAP">Maps</span></a>
                        <ul class="sidebar-nav sidebar-subnav collapse" id="maps">
                            <li class="sidebar-subnav-header">Maps</li>
                            <li class=" "><a href="maps-google.html" title="Google Maps"><span data-localize="sidebar.nav.map.GOOGLE">Google Maps</span></a></li>
                            <li class=" "><a href="maps-vector.html" title="Vector Maps"><span data-localize="sidebar.nav.map.VECTOR">Vector Maps</span></a></li>
                        </ul>
                    </li>
                    <li class="nav-heading "><span data-localize="sidebar.heading.MORE">More</span></li>
                    <li class=" "><a href="#pages" title="Pages" data-toggle="collapse"><em class="icon-doc"></em><span data-localize="sidebar.nav.pages.PAGES">Pages</span></a>
                        <ul class="sidebar-nav sidebar-subnav collapse" id="pages">
                            <li class="sidebar-subnav-header">Pages</li>
                            <li class=" "><a href="login.html" title="Login"><span data-localize="sidebar.nav.pages.LOGIN">Login</span></a></li>
                            <li class=" "><a href="register.html" title="Sign up"><span data-localize="sidebar.nav.pages.REGISTER">Sign up</span></a></li>
                            <li class=" "><a href="recover.html" title="Recover Password"><span data-localize="sidebar.nav.pages.RECOVER">Recover Password</span></a></li>
                            <li class=" "><a href="lock.html" title="Lock"><span data-localize="sidebar.nav.pages.LOCK">Lock</span></a></li>
                            <li class=" "><a href="template.html" title="Starter Template"><span data-localize="sidebar.nav.pages.STARTER">Starter Template</span></a></li>
                            <li class=" "><a href="404.html" title="404"><span>404</span></a></li>
                            <li class=" "><a href="500.html" title="500"><span>500</span></a></li>
                            <li class=" "><a href="maintenance.html" title="Maintenance"><span>Maintenance</span></a></li>
                        </ul>
                    </li>
                    <li class=" "><a href="#extras" title="Extras" data-toggle="collapse"><em class="icon-cup"></em><span data-localize="sidebar.nav.extra.EXTRA">Extras</span></a>
                        <ul class="sidebar-nav sidebar-subnav collapse" id="extras">
                            <li class="sidebar-subnav-header">Extras</li>
                            <li class=" "><a href="#blog" title="Blog" data-toggle="collapse"><em class="fas fa-angle-right"></em><span>Blog</span></a>
                                <ul class="sidebar-nav sidebar-subnav collapse" id="blog">
                                    <li class="sidebar-subnav-header">Blog</li>
                                    <li class=" "><a href="blog.html" title="List"><span>List</span></a></li>
                                    <li class=" "><a href="blog-post.html" title="Post"><span>Post</span></a></li>
                                    <li class=" "><a href="blog-articles.html" title="Articles"><span>Articles</span></a></li>
                                    <li class=" "><a href="blog-article-view.html" title="Article View"><span>Article View</span></a></li>
                                </ul>
                            </li>
                            <li class=" "><a href="#ecommerce" title="eCommerce" data-toggle="collapse"><em class="fas fa-angle-right"></em><span>eCommerce</span></a>
                                <ul class="sidebar-nav sidebar-subnav collapse" id="ecommerce">
                                    <li class="sidebar-subnav-header">eCommerce</li>
                                    <li class=" "><a href="ecommerce-orders.html" title="Orders">
                                            <div class="float-right badge badge-success">10</div><span>Orders</span>
                                        </a></li>
                                    <li class=" "><a href="ecommerce-order-view.html" title="Order View"><span>Order View</span></a></li>
                                    <li class=" "><a href="ecommerce-products.html" title="Products"><span>Products</span></a></li>
                                    <li class=" "><a href="ecommerce-product-view.html" title="Product View"><span>Product View</span></a></li>
                                    <li class=" "><a href="ecommerce-checkout.html" title="Checkout"><span>Checkout</span></a></li>
                                </ul>
                            </li>
                            <li class=" "><a href="#forum" title="Forum" data-toggle="collapse"><em class="fas fa-angle-right"></em><span>Forum</span></a>
                                <ul class="sidebar-nav sidebar-subnav collapse" id="forum">
                                    <li class="sidebar-subnav-header">Forum</li>
                                    <li class=" "><a href="forum-categories.html" title="Categories"><span>Categories</span></a></li>
                                    <li class=" "><a href="forum-topics.html" title="Topics"><span>Topics</span></a></li>
                                    <li class=" "><a href="forum-discussion.html" title="Discussion"><span>Discussion</span></a></li>
                                </ul>
                            </li>
                            <li class=" "><a href="contacts.html" title="Contacts"><span>Contacts</span></a></li>
                            <li class=" "><a href="contact-details.html" title="Contact details"><span>Contact details</span></a></li>
                            <li class=" "><a href="projects.html" title="Projects"><span>Projects</span></a></li>
                            <li class=" "><a href="project-details.html" title="Projects details"><span>Projects details</span></a></li>
                            <li class=" "><a href="team-viewer.html" title="Team viewer"><span>Team viewer</span></a></li>
                            <li class=" "><a href="social-board.html" title="Social board"><span>Social board</span></a></li>
                            <li class=" "><a href="vote-links.html" title="Vote links"><span>Vote links</span></a></li>
                            <li class=" "><a href="bug-tracker.html" title="Bug tracker"><span>Bug tracker</span></a></li>
                            <li class=" "><a href="faq.html" title="FAQ"><span>FAQ</span></a></li>
                            <li class=" "><a href="help-center.html" title="Help Center"><span>Help Center</span></a></li>
                            <li class=" "><a href="followers.html" title="Followers"><span>Followers</span></a></li>
                            <li class=" "><a href="settings.html" title="Settings"><span>Settings</span></a></li>
                            <li class=" "><a href="plans.html" title="Plans"><span>Plans</span></a></li>
                            <li class=" "><a href="file-manager.html" title="File manager"><span>File manager</span></a></li>
                            <li class=" "><a href="mailbox.html" title="Mailbox"><span data-localize="sidebar.nav.extra.MAILBOX">Mailbox</span></a></li>
                            <li class=" "><a href="timeline.html" title="Timeline"><span data-localize="sidebar.nav.extra.TIMELINE">Timeline</span></a></li>
                            <li class=" "><a href="calendar.html" title="Calendar"><span data-localize="sidebar.nav.extra.CALENDAR">Calendar</span></a></li>
                            <li class=" "><a href="invoice.html" title="Invoice"><span data-localize="sidebar.nav.extra.INVOICE">Invoice</span></a></li>
                            <li class=" "><a href="search.html" title="Search"><span data-localize="sidebar.nav.extra.SEARCH">Search</span></a></li>
                            <li class=" "><a href="todo.html" title="Todo List"><span data-localize="sidebar.nav.extra.TODO">Todo List</span></a></li>
                            <li class=" "><a href="profile.html" title="Profile"><span data-localize="sidebar.nav.extra.PROFILE">Profile</span></a></li>
                        </ul>
                    </li>
                    <li class=" "><a href="#multilevel" title="Multilevel" data-toggle="collapse"><em class="far fa-folder-open"></em><span>Multilevel</span></a>
                        <ul class="sidebar-nav sidebar-subnav collapse" id="multilevel">
                            <li class="sidebar-subnav-header">Multilevel</li>
                            <li class=" "><a href="#level1" title="Level 1" data-toggle="collapse"><span>Level 1</span></a>
                                <ul class="sidebar-nav sidebar-subnav collapse" id="level1">
                                    <li class="sidebar-subnav-header">Level 1</li>
                                    <li class=" "><a href="multilevel-1.html" title="Level1 Item"><span>Level1 Item</span></a></li>
                                    <li class=" "><a href="#level2" title="Level 2" data-toggle="collapse"><span>Level 2</span></a>
                                        <ul class="sidebar-nav sidebar-subnav collapse" id="level2">
                                            <li class="sidebar-subnav-header">Level 2</li>
                                            <li class=" "><a href="#level3" title="Level 3" data-toggle="collapse"><span>Level 3</span></a>
                                                <ul class="sidebar-nav sidebar-subnav collapse" id="level3">
                                                    <li class="sidebar-subnav-header">Level 3</li>
                                                    <li class=" "><a href="multilevel-3.html" title="Level3 Item"><span>Level3 Item</span></a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul><!-- END sidebar nav-->
            </nav>
        </div><!-- END Sidebar (left)-->
    </aside><!-- offsidebar-->
    <aside class="offsidebar d-none">
        <!-- START Off Sidebar (right)-->
        <nav>
            <div role="tabpanel">
                <!-- Nav tabs-->
                <ul class="nav nav-tabs nav-justified" role="tablist">
                    <li class="nav-item" role="presentation"><a class="nav-link active" href="#app-settings" aria-controls="app-settings" role="tab" data-toggle="tab"><em class="icon-equalizer fa-lg"></em></a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#app-chat" aria-controls="app-chat" role="tab" data-toggle="tab"><em class="icon-user fa-lg"></em></a></li>
                </ul><!-- Tab panes-->
                <div class="tab-content">
                    <div class="tab-pane fade active show" id="app-settings" role="tabpanel">
                        <h3 class="text-center text-thin mt-4">Settings</h3>
                        <div class="p-2">
                            <h4 class="text-muted text-thin">Themes</h4>
                            <div class="row row-flush mb-2">
                                <div class="col mb-2">
                                    <div class="setting-color"><label data-load-css="css/theme-a.css"><input type="radio" name="setting-theme" checked="checked"><span class="icon-check"></span><span class="split"><span class="color bg-info"></span><span class="color bg-info-light"></span></span><span class="color bg-white"></span></label></div>
                                </div>
                                <div class="col mb-2">
                                    <div class="setting-color"><label data-load-css="css/theme-b.css"><input type="radio" name="setting-theme"><span class="icon-check"></span><span class="split"><span class="color bg-green"></span><span class="color bg-green-light"></span></span><span class="color bg-white"></span></label></div>
                                </div>
                                <div class="col mb-2">
                                    <div class="setting-color"><label data-load-css="css/theme-c.css"><input type="radio" name="setting-theme"><span class="icon-check"></span><span class="split"><span class="color bg-purple"></span><span class="color bg-purple-light"></span></span><span class="color bg-white"></span></label></div>
                                </div>
                                <div class="col mb-2">
                                    <div class="setting-color"><label data-load-css="css/theme-d.css"><input type="radio" name="setting-theme"><span class="icon-check"></span><span class="split"><span class="color bg-danger"></span><span class="color bg-danger-light"></span></span><span class="color bg-white"></span></label></div>
                                </div>
                            </div>
                            <div class="row row-flush mb-2">
                                <div class="col mb-2">
                                    <div class="setting-color"><label data-load-css="css/theme-e.css"><input type="radio" name="setting-theme"><span class="icon-check"></span><span class="split"><span class="color bg-info-dark"></span><span class="color bg-info"></span></span><span class="color bg-gray-dark"></span></label></div>
                                </div>
                                <div class="col mb-2">
                                    <div class="setting-color"><label data-load-css="css/theme-f.css"><input type="radio" name="setting-theme"><span class="icon-check"></span><span class="split"><span class="color bg-green-dark"></span><span class="color bg-green"></span></span><span class="color bg-gray-dark"></span></label></div>
                                </div>
                                <div class="col mb-2">
                                    <div class="setting-color"><label data-load-css="css/theme-g.css"><input type="radio" name="setting-theme"><span class="icon-check"></span><span class="split"><span class="color bg-purple-dark"></span><span class="color bg-purple"></span></span><span class="color bg-gray-dark"></span></label></div>
                                </div>
                                <div class="col mb-2">
                                    <div class="setting-color"><label data-load-css="css/theme-h.css"><input type="radio" name="setting-theme"><span class="icon-check"></span><span class="split"><span class="color bg-danger-dark"></span><span class="color bg-danger"></span></span><span class="color bg-gray-dark"></span></label></div>
                                </div>
                            </div>
                        </div>
                        <div class="p-2">
                            <h4 class="text-muted text-thin">Layout</h4>
                            <div class="clearfix">
                                <p class="float-left">Fixed</p>
                                <div class="float-right"><label class="switch"><input id="chk-fixed" type="checkbox" data-toggle-state="layout-fixed"><span></span></label></div>
                            </div>
                            <div class="clearfix">
                                <p class="float-left">Boxed</p>
                                <div class="float-right"><label class="switch"><input id="chk-boxed" type="checkbox" data-toggle-state="layout-boxed"><span></span></label></div>
                            </div>
                            <div class="clearfix">
                                <p class="float-left">RTL</p>
                                <div class="float-right"><label class="switch"><input id="chk-rtl" type="checkbox"><span></span></label></div>
                            </div>
                        </div>
                        <div class="p-2">
                            <h4 class="text-muted text-thin">Aside</h4>
                            <div class="clearfix">
                                <p class="float-left">Collapsed</p>
                                <div class="float-right"><label class="switch"><input id="chk-collapsed" type="checkbox" data-toggle-state="aside-collapsed"><span></span></label></div>
                            </div>
                            <div class="clearfix">
                                <p class="float-left">Collapsed Text</p>
                                <div class="float-right"><label class="switch"><input id="chk-collapsed-text" type="checkbox" data-toggle-state="aside-collapsed-text"><span></span></label></div>
                            </div>
                            <div class="clearfix">
                                <p class="float-left">Float</p>
                                <div class="float-right"><label class="switch"><input id="chk-float" type="checkbox" data-toggle-state="aside-float"><span></span></label></div>
                            </div>
                            <div class="clearfix">
                                <p class="float-left">Hover</p>
                                <div class="float-right"><label class="switch"><input id="chk-hover" type="checkbox" data-toggle-state="aside-hover"><span></span></label></div>
                            </div>
                            <div class="clearfix">
                                <p class="float-left">Show Scrollbar</p>
                                <div class="float-right"><label class="switch"><input id="chk-scroll" type="checkbox" data-toggle-state="show-scrollbar" data-target=".sidebar"><span></span></label></div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="app-chat" role="tabpanel">
                        <h3 class="text-center text-thin mt-4">Connections</h3>
                        <div class="list-group">
                            <!-- START list title-->
                            <div class="list-group-item border-0"><small class="text-muted">ONLINE</small></div><!-- END list title-->
                            <div class="list-group-item list-group-item-action border-0">
                                <div class="media"><img class="align-self-center mr-3 rounded-circle thumb48" src="img/user/05.jpg" alt="Image">
                                    <div class="media-body text-truncate"><a href="#"><strong>Juan Sims</strong></a><br><small class="text-muted">Designeer</small></div>
                                    <div class="ml-auto"><span class="circle bg-success circle-lg"></span></div>
                                </div>
                            </div>
                            <div class="list-group-item list-group-item-action border-0">
                                <div class="media"><img class="align-self-center mr-3 rounded-circle thumb48" src="img/user/06.jpg" alt="Image">
                                    <div class="media-body text-truncate"><a href="#"><strong>Maureen Jenkins</strong></a><br><small class="text-muted">Designeer</small></div>
                                    <div class="ml-auto"><span class="circle bg-success circle-lg"></span></div>
                                </div>
                            </div>
                            <div class="list-group-item list-group-item-action border-0">
                                <div class="media"><img class="align-self-center mr-3 rounded-circle thumb48" src="img/user/07.jpg" alt="Image">
                                    <div class="media-body text-truncate"><a href="#"><strong>Billie Dunn</strong></a><br><small class="text-muted">Designeer</small></div>
                                    <div class="ml-auto"><span class="circle bg-danger circle-lg"></span></div>
                                </div>
                            </div>
                            <div class="list-group-item list-group-item-action border-0">
                                <div class="media"><img class="align-self-center mr-3 rounded-circle thumb48" src="img/user/08.jpg" alt="Image">
                                    <div class="media-body text-truncate"><a href="#"><strong>Tomothy Roberts</strong></a><br><small class="text-muted">Designeer</small></div>
                                    <div class="ml-auto"><span class="circle bg-warning circle-lg"></span></div>
                                </div>
                            </div><!-- START list title-->
                            <div class="list-group-item border-0"><small class="text-muted">OFFLINE</small></div><!-- END list title-->
                            <div class="list-group-item list-group-item-action border-0">
                                <div class="media"><img class="align-self-center mr-3 rounded-circle thumb48" src="img/user/09.jpg" alt="Image">
                                    <div class="media-body text-truncate"><a href="#"><strong>Lawrence Robinson</strong></a><br><small class="text-muted">Designeer</small></div>
                                    <div class="ml-auto"><span class="circle bg-warning circle-lg"></span></div>
                                </div>
                            </div>
                            <div class="list-group-item list-group-item-action border-0">
                                <div class="media"><img class="align-self-center mr-3 rounded-circle thumb48" src="img/user/10.jpg" alt="Image">
                                    <div class="media-body text-truncate"><a href="#"><strong>Tyrone Owens</strong></a><br><small class="text-muted">Designeer</small></div>
                                    <div class="ml-auto"><span class="circle bg-warning circle-lg"></span></div>
                                </div>
                            </div>
                        </div>
                        <div class="px-3 py-4 text-center">
                            <!-- Optional link to list more users--><a class="btn btn-purple btn-sm" href="#" title="See more contacts"><strong>Load more..</strong></a></div><!-- Extra items-->
                        <div class="px-3 py-2">
                            <p><small class="text-muted">Tasks completion</small></p>
                            <div class="progress progress-xs m-0">
                                <div class="progress-bar bg-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%"><span class="sr-only">80% Complete</span></div>
                            </div>
                        </div>
                        <div class="px-3 py-2">
                            <p><small class="text-muted">Upload quota</small></p>
                            <div class="progress progress-xs m-0">
                                <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%"><span class="sr-only">40% Complete</span></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav><!-- END Off Sidebar (right)-->
    </aside><!-- Main section-->
    <section class="section-container">
        <!-- Page content-->
        <div class="content-wrapper">
            <div class="content-heading">
                <div>Dashboard<small data-localize="dashboard.WELCOME"></small></div><!-- START Language list-->
                <div class="ml-auto">
                    <div class="btn-group"><button class="btn btn-secondary dropdown-toggle dropdown-toggle-nocaret" type="button" data-toggle="dropdown">English</button>
                        <div class="dropdown-menu dropdown-menu-right-forced animated fadeInUpShort" role="menu"><a class="dropdown-item" href="#" data-set-lang="en">English</a><a class="dropdown-item" href="#" data-set-lang="es">Spanish</a></div>
                    </div>
                </div><!-- END Language list-->
            </div><!-- START cards box-->
            <div class="row">
                <div class="col-xl-3 col-md-6">
                    <!-- START card-->
                    <div class="card flex-row align-items-center align-items-stretch border-0">
                        <div class="col-4 d-flex align-items-center bg-primary-dark justify-content-center rounded-left"><em class="icon-cloud-upload fa-3x"></em></div>
                        <div class="col-8 py-3 bg-primary rounded-right">
                            <div class="h2 mt-0">1700</div>
                            <div class="text-uppercase">Uploads</div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <!-- START card-->
                    <div class="card flex-row align-items-center align-items-stretch border-0">
                        <div class="col-4 d-flex align-items-center bg-purple-dark justify-content-center rounded-left"><em class="icon-globe fa-3x"></em></div>
                        <div class="col-8 py-3 bg-purple rounded-right">
                            <div class="h2 mt-0">700<small>GB</small></div>
                            <div class="text-uppercase">Quota</div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6 col-md-12">
                    <!-- START card-->
                    <div class="card flex-row align-items-center align-items-stretch border-0">
                        <div class="col-4 d-flex align-items-center bg-green-dark justify-content-center rounded-left"><em class="icon-bubbles fa-3x"></em></div>
                        <div class="col-8 py-3 bg-green rounded-right">
                            <div class="h2 mt-0">500</div>
                            <div class="text-uppercase">Reviews</div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6 col-md-12">
                    <!-- START date widget-->
                    <div class="card flex-row align-items-center align-items-stretch border-0">
                        <div class="col-4 d-flex align-items-center bg-green justify-content-center rounded-left">
                            <div class="text-center">
                                <!-- See formats: https://docs.angularjs.org/api/ng/filter/date-->
                                <div class="text-sm" data-now="" data-format="MMMM"></div><br>
                                <div class="h2 mt-0" data-now="" data-format="D"></div>
                            </div>
                        </div>
                        <div class="col-8 py-3 rounded-right">
                            <div class="text-uppercase" data-now="" data-format="dddd"></div><br>
                            <div class="h2 mt-0" data-now="" data-format="h:mm"></div>
                            <div class="text-muted text-sm" data-now="" data-format="a"></div>
                        </div>
                    </div><!-- END date widget-->
                </div>
            </div><!-- END cards box-->
            <div class="row">
                <!-- START dashboard main content-->
                <div class="col-xl-9">
                    <!-- START chart-->
                    <div class="row">
                        <div class="col-xl-12">
                            <!-- START card-->
                            <div class="card card-default card-demo" id="cardChart9">
                                <div class="card-header"><a class="float-right" href="#" data-tool="card-refresh" data-toggle="tooltip" title="Refresh card"><em class="fas fa-sync"></em></a><a class="float-right" href="#" data-tool="card-collapse" data-toggle="tooltip" title="Collapse card"><em class="fa fa-minus"></em></a>
                                    <div class="card-title">Inbound visitor statistics</div>
                                </div>
                                <div class="card-wrapper">
                                    <div class="card-body">
                                        <div class="chart-spline flot-chart"></div>
                                    </div>
                                </div>
                            </div><!-- END card-->
                        </div>
                    </div><!-- END chart-->
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="card border-0">
                                <div class="row row-flush">
                                    <div class="col-lg-2 col-md-3 col-6 bg-info py-4 d-flex align-items-center justify-content-center rounded-left"><em class="wi wi-day-sunny fa-4x"></em></div>
                                    <div class="col-lg-2 col-md-3 col-6 py-2 br d-flex align-items-center justify-content-center">
                                        <div>
                                            <div class="h1 m-0 text-bold">32&deg;</div>
                                            <div class="text-uppercase">Clear</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-3 d-none d-md-block py-2 text-center br">
                                        <div class="text-info text-sm">10 AM</div>
                                        <div class="text-muted text-md"><em class="wi wi-day-cloudy"></em></div>
                                        <div class="text-info"><span class="text-muted">20%</span></div>
                                        <div class="text-muted">27&deg;</div>
                                    </div>
                                    <div class="col-lg-2 col-md-3 d-none d-md-block py-2 text-center br">
                                        <div class="text-info text-sm">11 AM</div>
                                        <div class="text-muted text-md"><em class="wi wi-day-cloudy"></em></div>
                                        <div class="text-info"><span class="text-muted">30%</span></div>
                                        <div class="text-muted">28&deg;</div>
                                    </div>
                                    <div class="col-lg-2 py-2 text-center br d-none d-lg-block">
                                        <div class="text-info text-sm">12 PM</div>
                                        <div class="text-muted text-md"><em class="wi wi-day-cloudy"></em></div>
                                        <div class="text-info"><span class="text-muted">20%</span></div>
                                        <div class="text-muted">30&deg;</div>
                                    </div>
                                    <div class="col-lg-2 py-2 text-center d-none d-lg-block">
                                        <div class="text-info text-sm">1 PM</div>
                                        <div class="text-muted text-md"><em class="wi wi-day-sunny-overcast"></em></div>
                                        <div class="text-info"><span class="text-muted">0%</span></div>
                                        <div class="text-muted">30&deg;</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-4">
                            <!-- START card-->
                            <div class="card border-0">
                                <div class="card-body">
                                    <div class="d-flex">
                                        <h3 class="text-muted mt-0">300</h3><em class="ml-auto text-muted fa fa-coffee fa-2x"></em>
                                    </div>
                                    <div class="py-4" data-sparkline="" data-type="line" data-height="80" data-width="100%" data-line-width="2" data-line-color="#7266ba" data-spot-color="#888" data-min-spot-color="#7266ba" data-max-spot-color="#7266ba" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="3" data-values="1,3,4,7,5,9,4,4,7,5,9,6,4" data-resize="true"></div>
                                    <p><small class="text-muted">Actual progress</small></p>
                                    <div class="progress progress-xs mb-3">
                                        <div class="progress-bar bg-info progress-bar-striped" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%"><span class="sr-only">80% Complete</span></div>
                                    </div>
                                </div>
                            </div><!-- END card-->
                        </div>
                        <div class="col-xl-8">
                            <div class="card card-default">
                                <div class="card-header">
                                    <div class="px-2 float-right badge badge-danger">5</div>
                                    <div class="px-2 mr-2 float-right badge badge-success">12</div>
                                    <div class="card-title">Team messages</div>
                                </div><!-- START list group-->
                                <div class="list-group" data-height="180" data-scrollable="">
                                    <!-- START list group item-->
                                    <div class="list-group-item list-group-item-action">
                                        <div class="media"><img class="align-self-start mx-2 circle thumb32" src="img/user/02.jpg" alt="Image">
                                            <div class="media-body text-truncate">
                                                <p class="mb-1"><strong class="text-primary"><span class="circle bg-success circle-lg text-left"></span><span>Catherine Ellis</span></strong></p>
                                                <p class="mb-1 text-sm">Cras sit amet nibh libero, in gravida nulla. Nulla...</p>
                                            </div>
                                            <div class="ml-auto"><small class="text-muted ml-2">2h</small></div>
                                        </div>
                                    </div><!-- END list group item-->
                                    <!-- START list group item-->
                                    <div class="list-group-item list-group-item-action">
                                        <div class="media"><img class="align-self-start mx-2 circle thumb32" src="img/user/03.jpg" alt="Image">
                                            <div class="media-body text-truncate">
                                                <p class="mb-1"><strong class="text-primary"><span class="circle bg-success circle-lg text-left"></span><span>Jessica Silva</span></strong></p>
                                                <p class="mb-1 text-sm">Cras sit amet nibh libero, in gravida nulla. Nulla...</p>
                                            </div>
                                            <div class="ml-auto"><small class="text-muted ml-2">3h</small></div>
                                        </div>
                                    </div><!-- END list group item-->
                                    <!-- START list group item-->
                                    <div class="list-group-item list-group-item-action">
                                        <div class="media"><img class="align-self-start mx-2 circle thumb32" src="img/user/09.jpg" alt="Image">
                                            <div class="media-body text-truncate">
                                                <p class="mb-1"><strong class="text-primary"><span class="circle bg-danger circle-lg text-left"></span><span>Jessie Wells</span></strong></p>
                                                <p class="mb-1 text-sm">Cras sit amet nibh libero, in gravida nulla. Nulla...</p>
                                            </div>
                                            <div class="ml-auto"><small class="text-muted ml-2">4h</small></div>
                                        </div>
                                    </div><!-- END list group item-->
                                    <!-- START list group item-->
                                    <div class="list-group-item list-group-item-action">
                                        <div class="media"><img class="align-self-start mx-2 circle thumb32" src="img/user/12.jpg" alt="Image">
                                            <div class="media-body text-truncate">
                                                <p class="mb-1"><strong class="text-primary"><span class="circle bg-danger circle-lg text-left"></span><span>Rosa Burke</span></strong></p>
                                                <p class="mb-1 text-sm">Cras sit amet nibh libero, in gravida nulla. Nulla...</p>
                                            </div>
                                            <div class="ml-auto"><small class="text-muted ml-2"> 1d</small></div>
                                        </div>
                                    </div><!-- END list group item-->
                                    <!-- START list group item-->
                                    <div class="list-group-item list-group-item-action">
                                        <div class="media"><img class="align-self-start mx-2 circle thumb32" src="img/user/10.jpg" alt="Image">
                                            <div class="media-body text-truncate">
                                                <p class="mb-1"><strong class="text-primary"><span class="circle bg-danger circle-lg text-left"></span><span>Michelle Lane</span></strong></p>
                                                <p class="mb-1 text-sm">Mauris eleifend, libero nec cursus lacinia...</p>
                                            </div>
                                            <div class="ml-auto"><small class="text-muted ml-2"> 2d</small></div>
                                        </div>
                                    </div><!-- END list group item-->
                                </div><!-- END list group-->
                                <!-- START card footer-->
                                <div class="card-footer">
                                    <div class="input-group"><input class="form-control form-control-sm" type="text" placeholder="Search message .."><span class="input-group-btn"><button class="btn btn-secondary btn-sm" type="submit"><i class="fa fa-search"></i></button></span></div>
                                </div><!-- END card-footer-->
                            </div>
                        </div>
                    </div>
                </div><!-- END dashboard main content-->
                <!-- START dashboard sidebar-->
                <aside class="col-xl-3">
                    <!-- START loader widget-->
                    <div class="card card-default">
                        <div class="card-body"><a class="text-muted float-right" href="#"><em class="fa fa-arrow-right"></em></a>
                            <div class="text-info">Average Monthly Uploads</div>
                            <div class="text-center py-4">
                                <div class="easypie-chart easypie-chart-lg" data-easypiechart data-percent="70" data-animate="{&quot;duration&quot;: &quot;800&quot;, &quot;enabled&quot;: &quot;true&quot;}" data-bar-color="#23b7e5" data-track-Color="rgba(200,200,200,0.4)" data-scale-Color="false" data-line-width="10" data-line-cap="round" data-size="145"><span>70%</span></div>
                            </div>
                            <div class="text-center" data-sparkline="" data-bar-color="#23b7e5" data-height="30" data-bar-width="5" data-bar-spacing="2" data-values="5,4,8,7,8,5,4,6,5,5,9,4,6,3,4,7,5,4,7"></div>
                        </div>
                        <div class="card-footer">
                            <p class="text-muted"><em class="fa fa-upload fa-fw"></em><span>This Month</span><span class="text-dark">1000 Gb</span></p>
                        </div>
                    </div><!-- END loader widget-->
                    <!-- START messages and activity-->
                    <div class="card card-default">
                        <div class="card-header">
                            <div class="card-title">Latest activities</div>
                        </div><!-- START list group-->
                        <div class="list-group">
                            <!-- START list group item-->
                            <div class="list-group-item">
                                <div class="media">
                                    <div class="align-self-start mr-2"><span class="fa-stack"><em class="fa fa-circle fa-stack-2x text-purple"></em><em class="fas fa-cloud-upload-alt fa-stack-1x fa-inverse text-white"></em></span></div>
                                    <div class="media-body text-truncate">
                                        <p class="mb-1"><a class="text-purple m-0" href="#">NEW FILE</a></p>
                                        <p class="m-0"><small><a href="#">Bootstrap.xls</a></small></p>
                                    </div>
                                    <div class="ml-auto"><small class="text-muted ml-2">15m</small></div>
                                </div>
                            </div><!-- END list group item-->
                            <!-- START list group item-->
                            <div class="list-group-item">
                                <div class="media">
                                    <div class="align-self-start mr-2"><span class="fa-stack"><em class="fa fa-circle fa-stack-2x text-info"></em><em class="far fa-file-alt fa-stack-1x fa-inverse text-white"></em></span></div>
                                    <div class="media-body text-truncate">
                                        <p class="mb-1"><a class="text-info m-0" href="#">NEW DOCUMENT</a></p>
                                        <p class="m-0"><small><a href="#">Bootstrap.doc</a></small></p>
                                    </div>
                                    <div class="ml-auto"><small class="text-muted ml-2">2h</small></div>
                                </div>
                            </div><!-- END list group item-->
                            <!-- START list group item-->
                            <div class="list-group-item">
                                <div class="media">
                                    <div class="align-self-start mr-2"><span class="fa-stack"><em class="fa fa-circle fa-stack-2x text-danger"></em><em class="fa fa-exclamation fa-stack-1x fa-inverse text-white"></em></span></div>
                                    <div class="media-body text-truncate">
                                        <p class="mb-1"><a class="text-danger m-0" href="#">BROADCAST</a></p>
                                        <p class="m-0"><a href="#">Read</a></p>
                                    </div>
                                    <div class="ml-auto"><small class="text-muted ml-2">5h</small></div>
                                </div>
                            </div><!-- END list group item-->
                            <!-- START list group item-->
                            <div class="list-group-item">
                                <div class="media">
                                    <div class="align-self-start mr-2"><span class="fa-stack"><em class="fa fa-circle fa-stack-2x text-success"></em><em class="far fa-clock fa-stack-1x fa-inverse text-white"></em></span></div>
                                    <div class="media-body text-truncate">
                                        <p class="mb-1"><a class="text-success m-0" href="#">NEW MEETING</a></p>
                                        <p class="m-0"><small>On<em>10/12/2015 09:00 am</em></small></p>
                                    </div>
                                    <div class="ml-auto"><small class="text-muted ml-2">15h</small></div>
                                </div>
                            </div><!-- END list group item-->
                            <!-- START list group item-->
                            <div class="list-group-item">
                                <div class="media">
                                    <div class="align-self-start mr-2"><span class="fa-stack"><em class="fa fa-circle fa-stack-2x text-warning"></em><em class="fa fa-tasks fa-stack-1x fa-inverse text-white"></em></span></div>
                                    <div class="media-body text-truncate">
                                        <p class="mb-1"><a class="text-warning m-0" href="#">TASKS COMPLETION</a></p>
                                        <div class="progress progress-xs m-0">
                                            <div class="progress-bar bg-warning progress-bar-striped" role="progressbar" aria-valuenow="22" aria-valuemin="0" aria-valuemax="100" style="width: 22%"><span class="sr-only">22% Complete</span></div>
                                        </div>
                                    </div>
                                    <div class="ml-auto"><small class="text-muted ml-2">1w</small></div>
                                </div>
                            </div><!-- END list group item-->
                        </div><!-- END list group-->
                        <!-- START card footer-->
                        <div class="card-footer"><a class="text-sm" href="#">Load more</a></div><!-- END card-footer-->
                    </div><!-- END messages and activity-->
                </aside><!-- END dashboard sidebar-->
            </div>
        </div>
    </section>

    <!-- Page footer-->
    -<#include "footer.ftl" >
</body>

</html>


<#--<#setting url_escaping_charset='ISO-8859-1'>-->

<#--<html>-->
<#--<head>-->
    <#--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>-->
    <#--<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">-->
    <#--<LINK href="${context_path}/css/main.css" rel="stylesheet" type="text/css"/>-->
    <#--<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>-->
    <#--<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>-->
    <#--<script src="${context_path}/js/aw.js" type="text/javascript"></script>-->
    <#--<title>ActiveWeb - <@yield to="title"/></title>-->
<#--</head>-->
<#--<body>-->

<#--<#include "header.ftl" >-->

<#--<div class="container">-->

<#--${page_content}-->

<#--</div><!-- /.container &ndash;&gt;-->


<#--</body>-->

<#--</html>-->
