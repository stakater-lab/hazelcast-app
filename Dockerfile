FROM stakater/java-centos:1.8-centos7-v1.0.1

LABEL name="Common Service" \
      maintainer="Stakater <stakater@aurorasolutions.io>" \
      vendor="Stakater" \
      release="1" \
      summary="Project containing common services for Carbook applications"

USER 1001

WORKDIR $HOME

# Expose the port on which your service will run
EXPOSE 8080

# NOTE we assume there's only 1 jar in the target dir
COPY target/*.jar $HOME/artifacts/app.jar

CMD ["java", "-cp", "artifacts/app.jar", "com.Application"]