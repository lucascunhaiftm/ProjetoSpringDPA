### BUILD a maven builder. This will contain all mvn dependencies and act as an abstraction for all mvn goals
FROM maven:3.6.3-jdk-11-slim as builder

#Copy Custom Maven settings
#COPY settings.xml /root/.m2/

# create app folder for sources
RUN mkdir -p /build
RUN mkdir -p /build/logs

# The WORKDIR instruction sets the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow it in the Dockerfile.
WORKDIR /build
COPY pom.xml /build
#Download all required dependencies into one layer
RUN mvn -B dependency:go-offline dependency:resolve-plugins
RUN mvn clean install

