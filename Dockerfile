FROM java:openjdk-8-jdk

ENV MAVEN_VERSION 3.4.0-SNAPSHOT
ENV MAVEN_VERSION_TIMESTAMP 20160712.211749-154

RUN mkdir -p /usr/share/maven \
  && curl -fsSL https://repository.apache.org/content/repositories/snapshots/org/apache/maven/apache-maven/$MAVEN_VERSION/apache-maven-3.4.0-${MAVEN_VERSION_TIMESTAMP}-bin.tar.gz \
    | tar -xzC /usr/share/maven --strip-components=1 \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn \
  && useradd --create-home user \
  && mkdir /home/user/.m2 \
  && chown user:user /home/user/.m2

ENV MAVEN_HOME /usr/share/maven
VOLUME ["/home/user/.m2"]
USER user
CMD ["mvn", "--version"]