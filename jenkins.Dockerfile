FROM jenkins/jenkins:alpine-jdk21
LABEL maintainer="Jonathan Nguyen jonathan@jdnguyen.tech"
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/plugins.txt
EXPOSE 8080 
#let's  know what port to expose to make it available
