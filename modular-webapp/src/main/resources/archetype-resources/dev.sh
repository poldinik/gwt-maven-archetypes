#!/bin/sh

function cmd_run() {
  mvn -Dmaven.tomcat.port=8080 tomcat7:run -pl *-server -am -Denv=dev &
  mvn gwt:codeserver -pl *-client -am
}

function cleanup {
  killall java
}

eval cmd_${1}
{ set +x; } 2>/dev/null
trap cleanup EXIT




