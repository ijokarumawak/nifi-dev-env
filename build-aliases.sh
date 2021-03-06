#/bin/sh

alias nifi-clean-install="mvn clean install -T4 -Ddir-only -DskipTests"
alias nifi-contrib-check="mvn -Pcontrib-check verify"

alias nifi-build-properties="mvn --projects nifi-commons/nifi-properties,\
nifi-nar-bundles/nifi-framework-bundle/nifi-framework/nifi-properties-loader install -DskipTests"
alias nifi-deploy-properties="cp \
.//nifi-commons/nifi-properties/target/nifi-properties-${NIFI_VER}.jar \
.//nifi-nar-bundles/nifi-framework-bundle/nifi-framework/nifi-properties-loader/target/nifi-properties-loader-${NIFI_VER}.jar \
\$NIFI_SS_HOME/lib"

alias nifi-build-framework="mvn -P\!minify-and-compress install -DskipTests -f nifi-nar-bundles/nifi-framework-bundle"
alias nifi-build-framework-api="mvn --projects nifi-framework-api install -DskipTests"
alias nifi-deploy-framework-api="cp -p nifi-framework-api/target/nifi-framework-api*.jar \$NIFI_SS_HOME/lib"

alias nifi-build-assembly="mvn --projects nifi-assembly install -DskipTests"

alias nifi-build-core="mvn --projects \
nifi-nar-bundles/nifi-framework-bundle/nifi-framework/nifi-framework-core,\
nifi-nar-bundles/nifi-framework-bundle/nifi-framework/nifi-framework-core-api,\
nifi-nar-bundles/nifi-framework-bundle/nifi-framework-nar install -DskipTests"

alias nifi-build-authorization="mvn --projects \
nifi-nar-bundles/nifi-framework-bundle/nifi-framework/nifi-framework-authorization,\
nifi-nar-bundles/nifi-framework-bundle/nifi-framework-nar install -DskipTests"

alias nifi-build-cluster="mvn --projects \
nifi-nar-bundles/nifi-framework-bundle/nifi-framework/nifi-framework-cluster,\
nifi-nar-bundles/nifi-framework-bundle/nifi-framework-nar install -DskipTests"

alias nifi-build-site-to-site="mvn --projects \
nifi-nar-bundles/nifi-framework-bundle/nifi-framework/nifi-client-dto,\
nifi-commons/nifi-site-to-site-client,\
nifi-nar-bundles/nifi-framework-bundle/nifi-framework/nifi-site-to-site,\
nifi-nar-bundles/nifi-framework-bundle/nifi-framework/nifi-web/nifi-web-api,\
nifi-nar-bundles/nifi-framework-bundle/nifi-framework-nar install -DskipTests"

alias nifi-build-site-to-site-reporting="mvn --projects \
nifi-nar-bundles/nifi-extension-utils/nifi-reporting-utils,\
nifi-nar-bundles/nifi-site-to-site-reporting-bundle/nifi-site-to-site-reporting-task,\
nifi-nar-bundles/nifi-site-to-site-reporting-bundle/nifi-site-to-site-reporting-nar \
install -DskipTests"


alias nifi-build-web-api="mvn --projects \
nifi-nar-bundles/nifi-framework-bundle/nifi-framework/nifi-client-dto,\
nifi-nar-bundles/nifi-framework-bundle/nifi-framework/nifi-web/nifi-web-api,\
nifi-nar-bundles/nifi-framework-bundle/nifi-framework-nar install -DskipTests"

alias nifi-build-web-ui="mvn --projects \
nifi-nar-bundles/nifi-framework-bundle/nifi-framework/nifi-web/nifi-web-ui,\
nifi-nar-bundles/nifi-framework-bundle/nifi-framework-nar install -DskipTests -P\!minify-and-compress"

alias nifi-build-docs="mvn --projects \
nifi-docs,\
nifi-nar-bundles/nifi-framework-bundle/nifi-framework/nifi-web/nifi-web-docs,\
nifi-nar-bundles/nifi-framework-bundle/nifi-framework-nar install -T4 -DskipTests"

alias nifi-build-standard="mvn --projects \
nifi-nar-bundles/nifi-extension-utils/nifi-processor-utils,\
nifi-nar-bundles/nifi-standard-bundle/nifi-standard-processors,\
nifi-nar-bundles/nifi-standard-bundle/nifi-standard-content-viewer,\
nifi-nar-bundles/nifi-standard-bundle/nifi-standard-nar install -DskipTests"

alias nifi-build-proxy="mvn --projects \
nifi-nar-bundles/nifi-standard-services/nifi-standard-services-api-nar,\
nifi-nar-bundles/nifi-standard-services/nifi-proxy-configuration-api,\
nifi-nar-bundles/nifi-standard-services/nifi-proxy-configuration-bundle/nifi-proxy-configuration,\
nifi-nar-bundles/nifi-standard-services/nifi-proxy-configuration-bundle/nifi-proxy-configuration-nar,\
 install -DskipTests"

alias nifi-build-distriuted-cache="mvn --projects \
nifi-nar-bundles/nifi-standard-services/nifi-distributed-cache-client-service-api,\
nifi-nar-bundles/nifi-standard-services/nifi-standard-services-api-nar,\
nifi-nar-bundles/nifi-standard-services/nifi-distributed-cache-services-bundle/nifi-distributed-cache-protocol,\
nifi-nar-bundles/nifi-standard-services/nifi-distributed-cache-services-bundle/nifi-distributed-cache-server,\
nifi-nar-bundles/nifi-standard-services/nifi-distributed-cache-services-bundle/nifi-distributed-cache-client-service,\
nifi-nar-bundles/nifi-standard-services/nifi-distributed-cache-services-bundle/nifi-distributed-cache-services-nar install -DskipTests"

alias nifi-record-serialization-service="mvn --projects \
nifi-nar-bundles/nifi-extension-utils/nifi-record-utils/nifi-avro-record-utils,\
nifi-nar-bundles/nifi-standard-services/nifi-record-serialization-service-api,\ nifi-nar-bundles/nifi-standard-services/nifi-record-serialization-services-bundle/nifi-record-serialization-services,\
nifi-nar-bundles/nifi-standard-services/nifi-record-serialization-services-bundle/nifi-record-serialization-services-nar install -DskipTests
"

alias nifi-build-couchbase="mvn --projects \
nifi-nar-bundles/nifi-couchbase-bundle/nifi-couchbase-services-api,\
nifi-nar-bundles/nifi-couchbase-bundle/nifi-couchbase-services-api-nar,\
nifi-nar-bundles/nifi-couchbase-bundle/nifi-couchbase-processors,\
nifi-nar-bundles/nifi-couchbase-bundle/nifi-couchbase-nar install -DskipTests"

alias nifi-build-solr="mvn --projects \
nifi-nar-bundles/nifi-solr-bundle/nifi-solr-processors,\
nifi-nar-bundles/nifi-solr-bundle/nifi-solr-nar install -DskipTests"

alias nifi-build-avro="mvn --projects \
nifi-nar-bundles/nifi-avro-bundle/nifi-avro-processors,\
nifi-nar-bundles/nifi-avro-bundle/nifi-avro-nar install -DskipTests"

alias nifi-build-websocket="mvn --projects \
nifi-nar-bundles/nifi-websocket-bundle/nifi-websocket-services-api,\
nifi-nar-bundles/nifi-websocket-bundle/nifi-websocket-services-api-nar,\
nifi-nar-bundles/nifi-websocket-bundle/nifi-websocket-services-jetty,\
nifi-nar-bundles/nifi-websocket-bundle/nifi-websocket-services-jetty-nar,\
nifi-nar-bundles/nifi-websocket-bundle/nifi-websocket-processors,\
nifi-nar-bundles/nifi-websocket-bundle/nifi-websocket-processors-nar\
 install -DskipTests"

alias nifi-build-email="mvn --projects \
nifi-nar-bundles/nifi-email-bundle/nifi-email-processors,\
nifi-nar-bundles/nifi-email-bundle/nifi-email-nar install -DskipTests"

alias nifi-build-kafka-0.x="mvn --projects \
nifi-nar-bundles/nifi-kafka-bundle/nifi-kafka-pubsub-processors,\
nifi-nar-bundles/nifi-kafka-bundle/nifi-kafka-pubsub-nar,\
nifi-nar-bundles/nifi-kafka-bundle/nifi-kafka-processors,\
nifi-nar-bundles/nifi-kafka-bundle/nifi-kafka-nar install -DskipTests"

alias nifi-build-kafka-0-10="mvn --projects \
nifi-nar-bundles/nifi-kafka-bundle/nifi-kafka-0-10-processors,\
nifi-nar-bundles/nifi-kafka-bundle/nifi-kafka-0-10-nar install -DskipTests"

alias nifi-build-kafka="mvn --projects \
nifi-nar-bundles/nifi-kafka-bundle/nifi-kafka-0-8-processors,\
nifi-nar-bundles/nifi-kafka-bundle/nifi-kafka-0-8-nar,\
nifi-nar-bundles/nifi-kafka-bundle/nifi-kafka-0-9-processors,\
nifi-nar-bundles/nifi-kafka-bundle/nifi-kafka-0-9-nar,\
nifi-nar-bundles/nifi-kafka-bundle/nifi-kafka-0-10-processors,\
nifi-nar-bundles/nifi-kafka-bundle/nifi-kafka-0-10-nar,\
nifi-nar-bundles/nifi-kafka-bundle/nifi-kafka-0-11-processors,\
nifi-nar-bundles/nifi-kafka-bundle/nifi-kafka-0-11-nar,\
nifi-nar-bundles/nifi-kafka-bundle/nifi-kafka-1-0-processors,\
nifi-nar-bundles/nifi-kafka-bundle/nifi-kafka-1-0-nar,\
 install -DskipTests"

alias nifi-build-record-serialization="mvn --projects \
nifi-nar-bundles/nifi-extension-utils/nifi-record-utils/nifi-avro-record-utils,\
nifi-nar-bundles/nifi-standard-services/nifi-record-serialization-service-api,\
nifi-nar-bundles/nifi-standard-services/nifi-record-serialization-services-bundle,\
nifi-nar-bundles/nifi-standard-services/nifi-record-serialization-services-bundle/nifi-record-serialization-services,\
nifi-nar-bundles/nifi-standard-services/nifi-record-serialization-services-bundle/nifi-record-serialization-services-nar,\
 install -DskipTests"

alias nifi-build-hadoop="mvn --projects \
nifi-nar-bundles/nifi-hadoop-bundle,\
nifi-nar-bundles/nifi-hadoop-bundle/nifi-hdfs-processors,\
nifi-nar-bundles/nifi-hadoop-bundle/nifi-hadoop-nar clean install -DskipTests"

alias nifi-build-hbase="mvn --projects \
nifi-nar-bundles/nifi-standard-services,\
nifi-nar-bundles/nifi-standard-services/nifi-standard-services-api-nar,\
nifi-nar-bundles/nifi-standard-services/nifi-hbase-client-service-api,\
nifi-nar-bundles/nifi-standard-services/nifi-hbase_1_1_2-client-service-bundle,\
nifi-nar-bundles/nifi-standard-services/nifi-hbase_1_1_2-client-service-bundle/nifi-hbase_1_1_2-client-service,\
nifi-nar-bundles/nifi-standard-services/nifi-hbase_1_1_2-client-service-bundle/nifi-hbase_1_1_2-client-service-nar,\
nifi-nar-bundles/nifi-hbase-bundle,\
nifi-nar-bundles/nifi-hbase-bundle/nifi-hbase-processors,\
nifi-nar-bundles/nifi-hbase-bundle/nifi-hbase-nar clean install -DskipTests"

alias nifi-build-hive="mvn --projects \
nifi-nar-bundles/nifi-hive-bundle,\
nifi-nar-bundles/nifi-hive-bundle/nifi-hive-services-api,\
nifi-nar-bundles/nifi-hive-bundle/nifi-hive-services-api-nar,\
nifi-nar-bundles/nifi-hive-bundle/nifi-hive-processors,\
nifi-nar-bundles/nifi-hive-bundle/nifi-hive-nar clean install -DskipTests"


alias nifi-build-atlas="mvn --projects \
nifi-nar-bundles/nifi-extension-utils/nifi-reporting-utils,\
nifi-nar-bundles/nifi-atlas-bundle,\
nifi-nar-bundles/nifi-atlas-bundle/nifi-atlas-reporting-task,\
nifi-nar-bundles/nifi-atlas-bundle/nifi-atlas-nar clean install -DskipTests"

alias nifi-build-jms="mvn --projects \
nifi-nar-bundles/nifi-jms-bundle,\
nifi-nar-bundles/nifi-jms-bundle/nifi-jms-cf-service,\
nifi-nar-bundles/nifi-jms-bundle/nifi-jms-cf-service-nar,\
nifi-nar-bundles/nifi-jms-bundle/nifi-jms-processors,\
nifi-nar-bundles/nifi-jms-bundle/nifi-jms-processors-nar clean install -DskipTests"

alias nifi-build-poi="mvn --projects \
nifi-nar-bundles/nifi-poi-bundle/nifi-poi-processors,\
nifi-nar-bundles/nifi-poi-bundle/nifi-poi-nar clean install -DskipTests"
 
alias nifi-build-azure="mvn --projects \
nifi-nar-bundles/nifi-azure-bundle/nifi-azure-processors,\
nifi-nar-bundles/nifi-azure-bundle/nifi-azure-nar clean install -DskipTests"

alias nifi-build-aws="mvn --projects \
nifi-nar-bundles/nifi-aws-bundle/nifi-aws-service-api,\
nifi-nar-bundles/nifi-aws-bundle/nifi-aws-abstract-processors,\
nifi-nar-bundles/nifi-aws-bundle/nifi-aws-processors,\
nifi-nar-bundles/nifi-aws-bundle/nifi-aws-service-api-nar,\
nifi-nar-bundles/nifi-aws-bundle/nifi-aws-nar \
clean install -DskipTests"
 
alias nifi-deploy-nar="nars=\$(find nifi-nar-bundles/ -name '*.nar' |grep -v test);\
  cp -p \$nars \$NIFI_SS_HOME/lib; rm -f \$NIFI_SS_HOME/lib/nifi-framework-nar.nar;\
  rm -f \$NIFI_SS_HOME/lib/dummy-*;\
  rm -f \$NIFI_SS_HOME/lib/nifi-cybersecurity-nar-1.2.0-SNAPSHOT.nar;\
  rm -f \$NIFI_SS_HOME/lib/nifi-ranger-nar-1.2.0-SNAPSHOT.nar"

# --------
# Toolkit
# --------

alias nifi-toolkit-build-cli='mvn --projects nifi-toolkit-cli,nifi-toolkit-assembly install -DskipTests'

# --------
# Registry
# --------

alias nifi-reg-build-provider-api="mvn --projects nifi-registry-provider-api install -DskipTests\
  && cp -p nifi-registry-provider-api/target/nifi-registry-provider-api-*.jar $NIFI_REG_SS_HOME/lib/"
alias nifi-reg-build-framework="mvn --projects nifi-registry-framework install -DskipTests\
  && cp -p nifi-registry-framework/target/nifi-registry-framework-*.jar $NIFI_REG_SS_HOME/lib/"

