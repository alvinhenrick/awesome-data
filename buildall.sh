#!/bin/sh

for i in baseimage hadoop namenode datanode resourcemanager nodemanager historyserver spark spark-master spark-worker spark-notebook zookeeper kafka; do
    ( cd $i && ./build.sh)
done
