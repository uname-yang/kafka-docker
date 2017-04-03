FROM java:openjdk-8-jre

ARG VERSION=3.4.9

LABEL name="zookeeper" version=$VERSION

RUN apt-get update && \
    apt-get install -y wget && \
    apt-get clean \
    && wget -q -O - http://apache.fayea.com/zookeeper/zookeeper-$VERSION/zookeeper-$VERSION.tar.gz | tar -xzf - -C /opt \
    && mv /opt/zookeeper-$VERSION /opt/zookeeper \
    && cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg \
    && mkdir -p /tmp/zookeeper

EXPOSE 2181 2888 3888

WORKDIR /opt/zookeeper

ENTRYPOINT ["/opt/zookeeper/bin/zkServer.sh"]
CMD ["start-foreground"]
