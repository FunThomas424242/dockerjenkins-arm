# dockerjenkins


== Benutzung =

1. Anlegen des Verzeichnisses ~/jenkins_home
2. docker run -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker -v ~/jenkins_home:/var/jenkins_home -e "DOCKER_GID_ON_HOST=$(cat /etc/group | grep docker: | cut -d: -f3)" funthomas424242/dockerjenkins

Das initiale Passwort ist im Container zu finden unter:
/var/jenkins_home/secrets/initialAdminPassword

Auf den laufenden Container kann sich verbunden werden mit:
docker exec -it <containerID> bash

Die Container ID ermittelt man vorher über:
docker ps



== Quellen im Neuland

* https://www.oose.de/blogpost/jenkins-in-docker-und-mit-docker-und-fuer-docker/
