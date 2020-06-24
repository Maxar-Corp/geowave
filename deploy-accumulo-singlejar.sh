#!/usr/bin/env bash
mvn package -P accumulo-container-singlejar -Dfindbugs.skip -Dspotbugs.skip -DskipTest -Djava.awt.headless=true

mvn deploy:deploy-file -DgroupId=org.locationtech.geowave \
  -DartifactId=geowave-deploy \
  -Dversion=1.2.0-SNAPSHOT \
  -Dclassifier=accumulo \
  -Dpackaging=jar \
  -Dfile=deploy/target/geowave-deploy-1.2.0-SNAPSHOT-accumulo.jar \
  -DrepositoryId=safehouse-maven-snapshot \
  -Durl=http://ec2-3-80-38-6.compute-1.amazonaws.com/repository/safehouse-maven-snapshot \
  -Djava.awt.headless=true