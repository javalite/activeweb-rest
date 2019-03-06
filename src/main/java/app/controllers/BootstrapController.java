package app.controllers;

import org.javalite.activeweb.controllers.AbstractLesscController;

import java.io.File;

public class BootstrapController extends AbstractLesscController {
    @Override
    protected File getLessFile() {
        return new File("src/main/webapp/less/main.less");
    }
}