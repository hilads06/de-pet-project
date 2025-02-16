
wget https://downloads.apache.org/kafka/3.9.0/kafka_2.13-3.9.0.tgz &&  tar -xvf kafka_2.13-3.9.0.tgz

cd kafka_2.13-3.9.0
mkdir data
mkdir /data/zookeeper
public_ip = run("curl http://checkip.amazonaws.com")
echo "ADVERTISED_LISTENERS -> ..." >> config.server.properties
bin/zookeeper-server-start.sh config/zookeeper.properties
