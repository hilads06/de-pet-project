
wget https://downloads.apache.org/kafka/3.9.0/kafka_2.13-3.9.0.tgz &&  tar -xvf kafka_2.13-3.9.0.tgz

cd kafka_2.13-3.9.0
mkdir data
export KAFKA_HEAP_OPTS="-Xmx256M -Xms128M" 
mkdir /data/kafka
bin/kafka-server-start.sh config/server.properties &

