# Apache Maven 3.4.0-SNAPSHOT builds

[![](https://images.microbadger.com/badges/image/mfriedenhagen/docker-maven.svg)](https://microbadger.com/images/mfriedenhagen/docker-maven "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/mfriedenhagen/docker-maven.svg)](http://microbadger.com/images/mfriedenhagen/docker-maven "Get your own version badge on microbadger.com")

## Tags

* [`3.4.0-SNAPSHOT-jdk-8`, - `Dockerfile`](https://github.com/mfriedenhagen/docker-maven/blob/master/3.4.0/Dockerfile)
* [`3.4.0-SNAPSHOT-jdk-7` - `Dockerfile`](https://github.com/mfriedenhagen/docker-maven/blob/3.4.0-SNAPSHOT-jdk-7/3.4.0/Dockerfile)
* [`3.3.9-jdk-8`, - `Dockerfile`](https://github.com/mfriedenhagen/docker-maven/blob/master/3.3.9/Dockerfile)
* [`3.3.9-jdk-7` - `Dockerfile`](https://github.com/mfriedenhagen/docker-maven/blob/3.4.0-SNAPSHOT-jdk-7/3.3.9/Dockerfile)

## Info
* Mainly used for testing Apache Maven 3.4.0-SNAPSHOT more easily.
* In contrast to the standard Maven Docker images, the user
  running Maven is not `root` but `user`.
* Because colors are not important, replace `gossip*.jar` and `jansi*.jar` logging jars with `slf4j-simple-1.7.6.jar`.
* Run `docker run --rm -v $HOME/.m2:/home/user/.m2 -v $PWD:/build -w /build mfriedenhagen/docker-maven mvn clean verify`.