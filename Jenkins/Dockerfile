FROM jenkins:latest
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y ruby make python alien git  
# drop back to the regular jenkins user - good practice
USER jenkins

