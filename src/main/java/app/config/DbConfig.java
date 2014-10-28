package app.config;

import org.javalite.activeweb.AbstractDBConfig;
import org.javalite.activeweb.AppContext;

public class DbConfig extends AbstractDBConfig {

    public void init(AppContext context) {
        environment("development").jdbc("com.mysql.jdbc.Driver", "jdbc:mysql://localhost/rest_development", "root", "p@ssw0rd");
        environment("development").testing().jdbc("com.mysql.jdbc.Driver", "jdbc:mysql://localhost/rest_test", "root", "p@ssw0rd");
    }
}
