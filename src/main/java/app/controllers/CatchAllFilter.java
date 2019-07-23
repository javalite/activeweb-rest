package app.controllers;

import org.javalite.activeweb.controller_filters.HttpSupportFilter;

/**
 * @author Igor Polevoy on 10/28/14.
 */
public class CatchAllFilter extends HttpSupportFilter {
    @Override
    public void onException(Exception e) {

    }
}
