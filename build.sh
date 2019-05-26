#!/usr/bin/env bash
docker info -f '{{.OSType}}/{{.Architecture}}'
#
docker --config ./dockertestconfig manifest inspect -v laglinaro/jenkinsdocker:master | jq .[].Platform
#
docker --config ./dockertestconfig manifest inspect -v jenkinsci/jenkins:2.61 | jq .[].Platform
#
docker build -t "funthomas424242/dockerjenkins-arm" .

