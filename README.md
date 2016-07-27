#docker-jenkins-nodejs
Docker container with jenkins and nodejs.

## Version Information:
* **Jenkins:** 1.651.2
* **nodejs:** 5.3.0

## Usage

```
docker run --name jenkins_nodejs -itd \
	-p 8080:8080 -p 3000:3000 -p 50000:50000 \
	-v /srv/docker/jenkins/jenkins:/var/jenkins_home \
	-v /srv/docker/node/app:/var/app \
	-u root \
	rocdk890/jenkins-nodejs:latest
```