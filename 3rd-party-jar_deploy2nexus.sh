#!/usr/bin/env bash

echo "start deploy 3rd-party-jar..."

repositoryId=nexus-releases
deploy2url=http://192.168.0.222:8082/nexus3/repository/maven-releases/

mvn deploy:deploy-file -DgroupId=org.commontemplate \
  -DartifactId=commontemplate \
  -Dversion=0.8.7 \
  -Dpackaging=jar \
  -Dfile=commontemplate-0.8.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=com.artofsolving \
  -DartifactId=jodconverter \
  -Dversion=2.2.2 \
  -Dpackaging=jar \
  -Dfile=jodconverter-2.2.2.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=com.artofsolving \
  -DartifactId=jodconverter-cli \
  -Dversion=2.2.2 \
  -Dpackaging=jar \
  -Dfile=jodconverter-cli-2.2.2.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=net.sf.jacob-project \
  -DartifactId=jacob \
  -Dversion=1.16.1 \
  -Dpackaging=jar \
  -Dfile=jacob-1.16.1.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url \
  -Dtypes=dll,dll \
  -Dclassifiers=x64,x86 \
  -Dfiles=jacob-1.16.1-x64.dll,jacob-1.16.1-x86.dll

mvn deploy:deploy-file -DgroupId=javax.persistence \
  -DartifactId=persistence-api \
  -Dversion=2.0 \
  -Dpackaging=jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url \
  -Dtypes=jar,jar \
  -Dclassifiers=javadoc,sources \
  -Dfile=persistence-api-2.0.jar \
  -Dfiles=persistence-api-2.0-javadoc.jar,persistence-api-2.0-sources.jar

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-rasterizer \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-rasterizer-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-slideshow \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-slideshow-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-svgpp \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-svgpp-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-ttf2svg \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-ttf2svg-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-squiggle \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-squiggle-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-anim \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-anim-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-awt-util \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-awt-util-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-bridge \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-bridge-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-codec \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-codec-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-css \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-css-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-dom \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-dom-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-ext \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-ext-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-extension \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-extension-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-gui-util \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-gui-util-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-gvt \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-gvt-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-parser \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-parser-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-script \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-script-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-svg-dom\
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-svg-dom-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-svggen \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-svggen-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-swing \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-swing-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-transcoder \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-transcoder-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-util \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-util-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=batik-xml \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=batik-xml-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

mvn deploy:deploy-file -DgroupId=batik \
  -DartifactId=pdf-transcoder \
  -Dversion=1.7 \
  -Dpackaging=jar \
  -Dfile=pdf-transcoder-1.7.jar \
  -DrepositoryId=$repositoryId \
  -Durl=$deploy2url

echo "finished deploy 3rd-party-jar"
exit 0