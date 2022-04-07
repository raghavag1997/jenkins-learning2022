FROM jenkins/jenkins

USER root

RUN 	apt-get update && \
	apt-get  install python3-pip -y && \
	pip3 install ansible

RUN     apt-get install docker.io -y
USER jenkins
