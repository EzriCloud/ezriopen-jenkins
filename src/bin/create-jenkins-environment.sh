#!/bin/bash

source bin/setup-jenv.sh


#CREATE_USER
adduser ${JUSER_NAME} --disabled-password --shell ${JUSER_SHELL} --home ${JUSER_ROOT} --gecos ""
cp -R ezriopen-jenkins/src/.jenkins ${JUSER_ROOT}
cp -R ezriopen-jenkins/src/bin ${JUSER_ROOT}
chown -R ${JUSER_NAME}:${JUSER_NAME} ${JUSER_ROOT}
