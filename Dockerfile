FROM java:openjdk-8-jdk

ENV MAVEN_VERSION 3.4.0-SNAPSHOT

RUN mkdir -p /usr/share/maven \
  && curl -fsSL https://repository.apache.org/content/repositories/snapshots/org/apache/maven/apache-maven/$MAVEN_VERSION/apache-maven-3.4.0-20160709.185055-151-bin.tar.gz \
    | tar -xzC /usr/share/maven --strip-components=1 \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn \
  && useradd --create-home user \
  && mkdir /build \
  && chown user:user /build

ENV MAVEN_HOME /usr/share/maven
VOLUME ["/home/user/.m2"]
WORKDIR /build
USER user
ENTRYPOINT ["mvn"]
CMD ["--version"]