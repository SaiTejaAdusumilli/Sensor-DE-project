# app.py
from flask import Flask, request, jsonify
from kafka import KafkaProducer
import json
from kafka import KafkaProducer, KafkaConsumer
from time import sleep
from json import dumps
import json

app = Flask(__name__)

producer = KafkaProducer(
    bootstrap_servers=['3.145.152.120:9092'],
    value_serializer=lambda x: dumps(x).encode('utf-8')
)

@app.route('/send', methods=['POST'])
def send_to_kafka():
    data = request.json
    producer.send('kafka-topic', value=data)
    producer.flush()
    return jsonify({'status': 'Data sent to Kafka'}), 200

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)