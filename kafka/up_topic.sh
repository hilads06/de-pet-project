public_ip = run("curl http://checkip.amazonaws.com")

topic_name = 'kafka-1'
bin/kafka-topics.sh --create  --topic $topic --bootstrap-server {$public_ip:9092} --replication-factor 1 --partitions 1 &
bin/kafka-console-producer.sh --topic $topic --bootstrap-server {$public_ip:9092} &
bin/kafka-console-consumer.sh --topic $topic --bootstrap-server {$public_ip:9092} &
