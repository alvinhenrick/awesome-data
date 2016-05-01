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

