# Base Gitpod workspace image
FROM gitpod/workspace-full:latest

# Install Java (JDK) for Spring Boot
USER gitpod

RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh && \
    sdk install java 17.0.3-ms && \
    sdk default java 17.0.3-ms"

# Expose the ports for both applications
EXPOSE 8080
EXPOSE 5000
EXPOSE 11434