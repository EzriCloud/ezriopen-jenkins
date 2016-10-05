#!/bin/bash
adduser jenkins --disabled-password --shell /bin/bash --home /home/jenkins --gecos ""
cp -R ezriopen-jenkins/src/* /home/jenkins
chown -R jenkins:jenkins /home/jenkins
