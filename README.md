# BC 平台第三方开发包使用说明

## 部分第三方包因 maven 中心仓库中没有，需自行安装，包括：

- org.commontemplate:commontemplate:jar:0.8.7 (bc-core)
- com.artofsolving:jodconverter:jar:2.2.2 (bc-docs)
- com.artofsolving:jodconverter-cli:jar:2.2.2 (bc-docs, maven 中心仓库只有 2.2.1)
- net.sf.jacob-project:jacob:jar:1.16.1 (bc-docs, maven 中心仓库只有 1.14.3)
- javax.persistence:persistence-api:jar:2.0 (bc-web-struts)
- batik:batik:jar:1.7 (bc-report, maven 中心仓库只有 1.6-1)
- batik:batik:jar:1.7:compile
- batik:batik-rasterizer:jar:1.7:compile
- batik:batik-slideshow:jar:1.7:compile
- batik:batik-svgpp:jar:1.7:compile
- batik:batik-ttf2svg:jar:1.7:compile
- batik:batik-squiggle:jar:1.7:compile
- batik:batik-anim:jar:1.7:compile
- batik:batik-awt-util:jar:1.7:compile
- batik:batik-bridge:jar:1.7:compile
- batik:batik-codec:jar:1.7:compile
- batik:batik-css:jar:1.7:compile
- batik:batik-dom:jar:1.7:compile
- batik:batik-ext:jar:1.7:compile
- batik:batik-extension:jar:1.7:compile
- batik:batik-gui-util:jar:1.7:compile
- batik:batik-gvt:jar:1.7:compile
- batik:batik-parser:jar:1.7:compile
- batik:batik-script:jar:1.7:compile
- batik:batik-svg-dom:jar:1.7:compile
- batik:batik-svggen:jar:1.7:compile
- batik:batik-swing:jar:1.7:compile
- batik:batik-transcoder:jar:1.7:compile
- batik:batik-util:jar:1.7:compile
- batik:batik-xml:jar:1.7:compile
- batik:pdf-transcoder:jar:1.7:compile

如果您使用 [SonaType Nexus](http://www.sonatype.org/nexus/) 代理包的下载，可以执行脚本 `3rd-party-jar_deploy2nexus.sh` 将这些包自动发布到您的 nexus 仓库，方便团队其他成员直接使用。注意需修改脚本内第5、6行的 repositoryId、deploy2url 变量为相应的值，如：
```
repositoryId=nexus-releases
deploy2url=http://192.168.0.222:8082/nexus3/repository/maven-releases/
```
如果没有使用 nexus，则可以执行脚本 `3rd-party-jar_install2local.sh` 将这些包自动安装到您的本地 maven 仓库。

## 关于 Activiti 5.9
BC 平台所用的 BPMN 流转引擎版本为 Activiti 5.9，此版本并不在 maven 中心仓库中 (maven 中心仓库只有 5.14+)，需要到 [https://maven.alfresco.com/nexus/content/repositories/activiti]() 仓库获取，如果使用 [SonaType Nexus](http://www.sonatype.org/nexus/) 代理包的下载，将此仓库地址配为 nexus 的一个代理仓库即可。Activiti 5.9 相关的包为：
- activiti-engine-5.9.jar
- activiti-spring-5.9.jar
- activiti-osgi-5.9.jar
- activiti-cdi-5.9.jar
- activiti-cxf-5.9.jar
- activiti-camel-5.9.jar


## 友情链接

- [Guide to deploying 3rd party JARs to remote repository](https://maven.apache.org/guides/mini/guide-3rd-party-jars-remote.html)
    ```
    mvn deploy:deploy-file -DgroupId=<group-id> \
      -DartifactId=<artifact-id> \
      -Dversion=<version> \
      -Dpackaging=<type-of-packaging> \
      -Dfile=<path-to-file> \
      -DrepositoryId=<id-to-map-on-server-section-of-settings.xml> \
      -Durl=<url-of-the-repository-to-deploy> \
      -Dtypes=xxx \
      -Dclassifiers=xxx \
      -Dfiles=xxx
    ```

- [Installing an artifact to a specific local repository path](http://maven.apache.org/components/plugins/maven-install-plugin/examples/specific-local-repo.html)
    ```
    mvn install:install-file -DgroupId=<group-id> \
      -DartifactId=<artifact-id> \
      -Dversion=<version> \
      -Dpackaging=<type-of-packaging> \
      -Dfile=<path-to-your-artifact-jar> \
      -Dclassifier=<classifier>
      -Dsources=<src.jar> \
      -Djavadoc=<apidocs.jar> \
      -DlocalRepositoryPath=<path-to-specific-local-repo>
    ```