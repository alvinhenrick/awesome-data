# How to use docker-compose
To start a cluster:
```
    ./buildall.sh
    docker-compose up -d
```

To scale up spark-workers:
```
    docker-compose scale spark-worker=3
```

docker run -it --rm --env-file=./hadoop.env --net hadoop awesomedata/hadoop hadoop fs -mkdir -p /user/root

docker run -it --rm --net hadoop --name kafka-produce --volume $(pwd):/data/ awesomedata/hadoop-spark bash

./bin/spark-submit --master spark://spark-master.hadoop:7077 --class org.example.your.class --deploy-mode cluster --driver-memory 4g --executor-memory 2g --executor-cores 1 --queue thequeue my.jar my_cli_option1 my_cli_option2

docker run -it --rm --net hadoop --name spark-submit-application --volume $(pwd):/data/ awesomedata/hadoop-spark ./bin/spark-submit --class org.apache.spark.examples.SparkPi --master spark://spark-master.hadoop:7077 --deploy-mode cluster --driver-memory 4g --executor-memory 2g --executor-cores 1 --queue thequeue lib/spark-examples*.jar 10
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      

docker run -it --rm --net hadoop --name kafka-produce --volume $(pwd):/data/ awesomedata/hadoop-spark bash
/opt/spark-1.6.1/bin/spark-submit --master spark://spark-master.hadoop:7077 --class com.wiki.produce.example.WikiProduceStream --deploy-mode client --driver-memory 4g --executor-memory 2g --executor-cores 2 --queue prodqueue target/dfw-spark-meetup.jar

docker run -it --rm --net hadoop --name kafka-consume --volume $(pwd):/data/ awesomedata/hadoop-spark bash
/opt/spark-1.6.1/bin/spark-submit --master spark://spark-master.hadoop:7077 --class com.wiki.consume.example.WikiConsumeStream --deploy-mode client --driver-memory 4g --executor-memory 2g --executor-cores 2 --queue consqueue target/dfw-spark-meetup.jar

