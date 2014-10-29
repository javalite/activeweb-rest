package app.config;

import app.controllers.CatchAllFilter;
import app.controllers.PeopleController;
import org.javalite.activeweb.AbstractControllerConfig;
import org.javalite.activeweb.AppContext;
import org.javalite.activeweb.controller_filters.DBConnectionFilter;
import org.javalite.activeweb.controller_filters.TimingFilter;

public class AppControllerConfig extends AbstractControllerConfig {

    public void init(AppContext context) {
        addGlobalFilters(new TimingFilter());

        add(new DBConnectionFilter(), new CatchAllFilter()).to(PeopleController.class);
    }
}
