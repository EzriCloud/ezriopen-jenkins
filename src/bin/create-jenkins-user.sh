#!/bin/bash
mkdir -p ~/projects
cd ~/projects
rm -rf ezriopen-jenkins
git clone https://github.com/ezricloud/ezriopen-jenkins
adduser jenkins --disabled-password --shell /bin/bash --home /home/jenkins --gecos ""
cp -R ~/projects/ezriopen-jenkins/src /home/jenkins
chown -R jenkins:jenkins /home/jenkins
