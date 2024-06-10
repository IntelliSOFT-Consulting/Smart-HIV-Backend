#!/bin/bash

# ensure hapi-fhir network exists
docker network ls | grep -wq hapi-fhir || docker network create hapi-fhir


if [ -n "$1" ]; then
    docker compose -f hapi-fhir/docker-compose.yml -f matchbox/docker-compose-matchbox.yml -f proxy/docker-compose.yml $@
else
    docker compose -f hapi-fhir/docker-compose.yml -f matchbox/docker-compose-matchbox.yml -f proxy/docker-compose.yml up -d --force-recreate
fi