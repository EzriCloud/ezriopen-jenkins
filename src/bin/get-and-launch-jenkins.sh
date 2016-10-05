#!/bin/bash

source bin/setup-jenv.sh

#DOWNLOAD_WAR

curl -o ${USER_ROOT}/jenkins.war ${JENKINS_WAR}
chown ${USER_NAME}:${USER_NAME} ${USER_ROOT}/jenkins.war

#STARTUP JENKINS in a TMUX
runuser -l ${USER_NAME} new-session -d -s jenkins_in_tmux 'java -jar jenkins.war'
