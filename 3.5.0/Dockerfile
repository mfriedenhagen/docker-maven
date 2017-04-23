FROM openjdk:8-jdk

ENV MAVEN_VERSION 3.5.0
ENV MAVEN_DOWNLOAD_LOG_LEVEL INFO
ENV MAVEN_OPTS "-Dorg.slf4j.simpleLogger.log.org.apache.maven.cli.transfer.Slf4jMavenTransferListener=${MAVEN_DOWNLOAD_LOG_LEVEL} -Dorg.slf4j.simpleLogger.showDateTime=true -Djava.awt.headless=true"

RUN mkdir -p /usr/share/maven \
  && curl -fsSL https://repo1.maven.org/maven2/org/apache/maven/apache-maven/3.5.0/apache-maven-3.5.0-bin.tar.gz \
    | tar -xzC /usr/share/maven --strip-components=1 \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn \
  && useradd --create-home user \
  && mkdir -p /home/user/.m2/repository /cache \
  && chown -R user:user /home/user/ /cache

ENV MAVEN_HOME /usr/share/maven
USER user
CMD ["mvn", "--version"]
