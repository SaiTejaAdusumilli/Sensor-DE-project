#!/bin/bash

# Update the system
sudo yum update -y

# Install Java (required for Kafka)
sudo yum install -y java-1.8.0-openjdk

# Download and extract Kafka
wget https://downloads.apache.org/kafka/3.4.0/kafka_2.13-3.4.0.tgz -O /tmp/kafka.tgz
sudo mkdir /opt/kafka
sudo tar -xvzf /tmp/kafka.tgz --strip 1 -C /opt/kafka

# Set up environment variables
echo 'export KAFKA_HOME=/opt/kafka' >> ~/.bashrc
echo 'export PATH=$PATH:$KAFKA_HOME/bin' >> ~/.bashrc
source ~/.bashrc

# Start Zookeeper
sudo /opt/kafka/bin/zookeeper-server-start.sh -daemon /opt/kafka/config/zookeeper.properties

# Start Kafka
export KAFKA_HEAP_OPTS="-Xmx256M -Xms128M"
# sudo /opt/kafka/bin/kafka-server-start.sh -daemon /opt/kafka/config/server.properties

# Create a Kafka topic
# sudo /opt/kafka/bin/kafka-topics.sh --create --topic my-topic --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1

# Verify topic creation (optional)
# sudo /opt/kafka/bin/kafka-topics.sh --list --bootstrap-server localhost:9092

echo "Hello successfully added Kafka"
