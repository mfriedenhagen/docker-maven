# Apache Maven 3.4.0-SNAPSHOT builds

* Mainly used for testing Apache Maven 3.4.0-SNAPSHOT more easily.
* In contrast to the standard Maven Docker images, the user
  running Maven is not `root` but `user` and `/home/user/.m2/`
  is exposed as volume, so you may easily use your own 
  `settings.xml`
* Because colors are not important, replace `gossip*.jar` logging jars with `slf4j-simple-1.7.6.jar`.
* Run `docker run --rm -v $HOME/.m2:/home/user/.m2 -v $PWD:/build -w /build mfriedenhagen/docker-maven mvn clean verify`.