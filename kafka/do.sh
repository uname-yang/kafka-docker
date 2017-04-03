#!/bin/sh
echo broker.id=${BROKER_ID:-0} >> /opt/kafka/config/server.properties
/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties
