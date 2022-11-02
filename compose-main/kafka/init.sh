#!/bin/bash

kafka-topics --create --if-not-exists --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic tracks-topic --config retention.ms=100 log.retention.ms=100
kafka-topics --create --if-not-exists --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic connector-info-topic --config retention.ms=100 log.retention.ms=100
kafka-topics --create --if-not-exists --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic plots-topic --config retention.ms=100 log.retention.ms=100
kafka-topics --create --if-not-exists --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic strobes-topic --config retention.ms=100 log.retention.ms=100
kafka-topics --create --if-not-exists --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic positions-topic --config retention.ms=100 log.retention.ms=100
kafka-topics --create --if-not-exists --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic ranges-topic --config retention.ms=100 log.retention.ms=100
kafka-topics --create --if-not-exists --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic northmarkers-topic --config retention.ms=100 log.retention.ms=100
kafka-topics --create --if-not-exists --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic scansectors-topic --config retention.ms=100 log.retention.ms=100
kafka-topics --create --if-not-exists --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic scanperiods-topic --config retention.ms=100 log.retention.ms=100
kafka-topics --create --if-not-exists --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic alerts-topic --config retention.ms=100 log.retention.ms=100
kafka-topics --create --if-not-exists --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic failures-topic --config retention.ms=100 log.retention.ms=100
kafka-topics --create --if-not-exists --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic lrus-topic --config retention.ms=100 log.retention.ms=100
kafka-topics --create --if-not-exists --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic datarequests-topic --config retention.ms=100 log.retention.ms=100
kafka-topics --create --if-not-exists --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic commandssend-topic --config retention.ms=100 log.retention.ms=100
kafka-topics --create --if-not-exists --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic datacommand-topic --config retention.ms=100 log.retention.ms=100
kafka-topics --create --if-not-exists --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic accessrequest-topic --config retention.ms=100 log.retention.ms=100


# kafka-topics --bootstrap-server=localhost:9092 --list
# kafka-consumer-groups --list --bootstrap-server localhost:9092
# kafka-consumer-groups --bootstrap-server localhost:9092 --all-groups --describe
# watch -n 10 'kafka-consumer-groups --bootstrap-server localhost:9092 --all-groups --describe'