FROM awesomedata/hadoop-spark
MAINTAINER Alvin Henrick <alvinhenrick@aol.com>

ADD spark-worker-entrypoint.sh /spark-worker-entrypoint.sh
RUN chmod a+x /spark-worker-entrypoint.sh

ENTRYPOINT ["/spark-worker-entrypoint.sh"]
