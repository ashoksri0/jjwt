#!/usr/bin/env bash

for i in `ls $TRAVIS_BUILD_DIR/support`;
do
  mvn org.apache.maven.plugins:maven-install-plugin:2.5:install-file -Dfile=$TRAVIS_BUILD_DIR/support/$i -DpomFile=pom.xml
done
