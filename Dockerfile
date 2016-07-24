FROM java:openjdk-7-jdk

ENV MAVEN_VERSION 3.4.0-SNAPSHOT
ENV MAVEN_VERSION_TIMESTAMP 20160723.183329-159

RUN mkdir -p /usr/share/maven \
  && curl -fsSL https://repository.apache.org/content/repositories/snapshots/org/apache/maven/apache-maven/$MAVEN_VERSION/apache-maven-3.4.0-${MAVEN_VERSION_TIMESTAMP}-bin.tar.gz \
    | tar -xzC /usr/share/maven --strip-components=1 \
  && rm -f /usr/share/maven/lib/gossip*jar \
  && rm -f /usr/share/maven/lib/jansi*jar \
  && curl -fsSL https://repo1.maven.org/maven2/org/slf4j/slf4j-simple/1.7.6/slf4j-simple-1.7.6.jar > /usr/share/maven/lib/slf4j-simple-1.7.6.jar \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn \
  && useradd --create-home user \
  && mkdir /home/user/.m2 \
  && chown user:user /home/user/.m2

ENV MAVEN_HOME /usr/share/maven
VOLUME ["/home/user/.m2"]
USER user
CMD ["mvn", "--version"]