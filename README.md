# ActiveWeb REST API Example APP

Provides an example CRUD REST service using [JavaLite](http://javalite.io) technologies. 


## Running

## Adjust database connection values to reflect your environment:
* [blob/master/pom.xml](blob/master/pom.xml)
* [blob/master/src/main/java/app/config/DbConfig.java](blob/master/src/main/java/app/config/DbConfig.java)

## Reset/re-create databases:

```
./scripts/reset_db.sh
```

>  If you are on Windows, just execute maven commands inside the script or create batch files with the same content.

## Explore the app

### Start the app

Running is the same as any other Java app:

```
mvn jetty:run

```

and then navigating to [http://localhost:8080/people](http://localhost:8080/people).



### Posting new JSON document

is easy by executing this script:

```
./update.sh
```

Take a look at the contents of this script: [upload.sh](blob/master/upload.sh) and see that this app is a really service.

Navigate to [http://localhost:8080/people](http://localhost:8080/people) again and see new people created (and note their IDs).

Explore an individual person:
[http://localhost:8080/people/1](http://localhost:8080/people/1), where "1" is an ID of a single person


## Features

* **Models are simple**: [tree/master/src/main/java/app/models](tree/master/src/main/java/app/models). Only the Person model
has a method `getAddresses()`, otherwise no methods
* **RESTful controller uses automatic routes**: [PeopleController.java](blob/master/src/main/java/app/controllers/PeopleController.java)
* **Exceptional conditions handled outside business logic**: [CatchAllFilter.java](blob/master/src/main/java/app/controllers/CatchAllFilter.java)
* **JSON is generated using powerful templating**: with partials and children - [people views](blob/master/src/main/webapp/WEB-INF/views/people/)
* **Tests expect certain JSON structure and data**: [PeopleControllerSpec.java](blob/master/src/test/java/app/controllers/PeopleControllerSpec.java)
