#!/bin/bash

# Запуск Couchbase Server
couchbase-server &

# Ожидание запуска Couchbase Server
sleep 15

# Настраиваем администраторскую учетную запись и кластер
couchbase-cli cluster-init -c 127.0.0.1 --cluster-username ${COUCHBASE_USER} --cluster-password ${COUCHBASE_PASSWORD} --services data,index,query --cluster-ramsize 1024 --cluster-index-ramsize 512 --cluster-eventing-ramsize 256 --cluster-fts-ramsize 256

# Создаем bucket
couchbase-cli bucket-create -c 127.0.0.1 --username ${COUCHBASE_USER} --password ${COUCHBASE_PASSWORD} --bucket ${COUCHBASE_BUCKET} --bucket-type couchbase --bucket-ramsize 512

# Ожидание завершения работы Couchbase Server
wait
