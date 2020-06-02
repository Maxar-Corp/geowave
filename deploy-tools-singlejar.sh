#!/usr/bin/env bash
mvn package -P geowave-tools-singlejar -Dfindbugs.skip -Dspotbugs.skip -DskipTest

mvn deploy:deploy-file -DgroupId=org.locationtech.geowave \
  -DartifactId=geowave-tools-singlejar \
  -Dversion=1.2.0-SNAPSHOT \
  -Dpackaging=jar \
  -Dfile=deploy/target/geowave-deploy-1.2.0-SNAPSHOT-tools.jar \
  -DrepositoryId=safehouse-maven-snapshot \
  -Durl=http://ec2-3-80-38-6.compute-1.amazonaws.com/repository/safehouse-maven-snapshot