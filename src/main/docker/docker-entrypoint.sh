#!/bin/sh

if [ "$1" = 'java' ]; then
	echo "Running Spring Boot application with options:"
	echo "JAVA_APPLICATION_HOME=${JAVA_APPLICATION_HOME}"
	echo "JAVA_OPTS=${JAVA_OPTS}"
	echo "EXT_JAVA_OPTS=${EXT_JAVA_OPTS}"
	echo "AGENT_JAVA_OPTS=${AGENT_JAVA_OPTS}"
	echo "DOCKER_JAVA_OPTS=${DOCKER_JAVA_OPTS}"
	echo "SPRING_JAVA_OPTS=${SPRING_JAVA_OPTS}"
	echo "SPRING_ARGUMENTS=${SPRING_ARGUMENTS}"
	java ${JAVA_OPTS} ${EXT_JAVA_OPTS} ${AGENT_JAVA_OPTS} ${DOCKER_JAVA_OPTS} ${SPRING_JAVA_OPTS} -jar ${JAVA_APPLICATION_HOME}/*-spring.jar ${SPRING_ARGUMENTS}
else 
	exec "$@"	
fi
