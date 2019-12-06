#!/bin/bash


sudo yum install maven -y
mvn -version

#intall OpenJDK
java-1.8.0-openjdk
java -version

wget https://www-us.apache.org/dist/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz -P /tmp

sudo tar xf /tmp/apache-maven-3.6.0.tar.gz -C /opt
sudo ln -s /opt/apache-maven-3.6.0 /opt/maven

sudo touch /etc/profile.d/maven.sh


sudo export JAVA_HOME=/usr/lib/jvm/jre-openjdk > /etc/profile.d/maven.sh 
sudo export M2_HOME=/opt/maven > /etc/profile.d/maven.sh
sudo export MAVEN_HOME=/opt/maven > /etc/profile.d/maven.sh
sudo export PATH=${M2_HOME}/bin:${PATH} > /etc/profile.d/maven.sh

sudo chmor +755 /etc/profile.d/maven.sh


sudo source /etc/profile.d/maven.sh

sudo mvn -version


