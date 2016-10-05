#!/bin/bash

#You can pass in the following env vars:
# JENKINS_WAR : the URL to download Jenkins .war from. Leave it blank, and I get the latest community
# CB_LATEST=1 : With this parameter, I will download the latest CloudBees Jenkins

export JUSER_NAME="jenkins"
export JUSER_ROOT="/home/jenkins"
export JUSER_SHELL="/bin/bash"

if [ -n "${CB_LATEST}" ]; then
    JENKINS_WAR="http://downloads.cloudbees.com/cje/rolling/latest/jenkins.war"
fi

if [ -z "${JENKINS_WAR}" ]; then
    echo "Since JENKINS_WAR was not specified, I will use jenkins(latest)"
    echo "http://mirrors.jenkins-ci.org/war/latest/jenkins.war"
    JENKINS_WAR="http://mirrors.jenkins-ci.org/war/latest/jenkins.war"
fi
