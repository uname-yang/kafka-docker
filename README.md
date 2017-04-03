# kafka-docker

## 运行

1. 创建topic：
```
bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 2 --topic test
```
2. 查看topic：
```
bin/kafka-topics.sh --list --zookeeper localhost:2181
bin/kafka-topics.sh --describe --zookeeper localhost:2181 --topic test
```
3. 创建producer：
```
bin/kafka-console-producer.sh --broker-list localhost:10001 --topic test
```
4. 创建consumer：
```
bin/kafka-console-consumer.sh --bootstrap-server localhost:10001 --topic test --from-beginning
```
