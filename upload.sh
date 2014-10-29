#!/bin/sh
curl -X POST -H "Content-Type: octet/stream" --data-binary @src/test/resources/people.json http://localhost:8080/people