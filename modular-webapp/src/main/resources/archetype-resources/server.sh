#!/bin/bash

function cmd_run {
  docker build -t ${groupId}/${artifactId} .
  docker kill $(docker ps -q)
  docker run -d -p 8080:8080 ${groupId}/${artifactId}
}

eval cmd_${1}
{ set +x; } 2>/dev/null