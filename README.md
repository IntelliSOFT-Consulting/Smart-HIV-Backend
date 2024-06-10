# HAPI FHIR & Matchbox Services For the Smart HIV Project

This repository contains Docker Compose configurations to set up HAPI FHIR and Matchbox services for the Smart HIV Project.

### Pre-requisites
1. Docker
2. Docker Compose


#### Instructions

1. Development Mode

Simply run

`docker compose -f hapi-fhir/docker-compose.yml -f matchbox/docker-compose-matchbox.yml up -d --force-recreate`

2. Production Mode (This will require valid SSL Certificates)
Configure the paths to your SSL certificates in the [proxy/docker-compose.yml](proxy/docker-compose.yml) file

Simply run

`./start-all.sh`
