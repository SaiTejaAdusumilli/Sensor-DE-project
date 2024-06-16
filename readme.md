## kafka url :

https://downloads.apache.org/kafka/3.6.2/kafka_2.12-3.6.2.tgz

## Start Zoo-keeper:

bin/zookeeper-server-start.sh config/zookeeper.properties

## Start Kafka-server:

Duplicate the session & enter in a new console --
export KAFKA_HEAP_OPTS="-Xmx256M -Xms128M"
cd kafka_2.12-3.3.1
bin/kafka-server-start.sh config/server.properties

topic: bin/kafka-console-consumer.sh --topic kafka-topic --bootstrap-server 3.145.152.120:9092

## Start Producer:

bin/kafka-console-producer.sh --topic kafka-topic --bootstrap-server 3.145.152.120:9092

## Start Consumer:

Duplicate the session & enter in a new console --
cd kafka_2.12-3.3.1
bin/kafka-console-consumer.sh --topic kafka-topic --bootstrap-server 3.145.152.120:9092

sudo yum update -y
sudo yum install python3 -y
sudo yum install python3-pip -y
pip3 install kafka-python flask
mkdir pyfiles
cd pyfiles
nano app.py
cat app.py
