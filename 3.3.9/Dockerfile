FROM maven:3-jdk-8

RUN useradd --create-home user \
  && mkdir -p /home/user/.m2/repository \
  && chown -R user:user /home/user/.m2 /home/user/.m2/repository

ENV MAVEN_HOME /usr/share/maven
USER user
CMD ["mvn", "--version"]