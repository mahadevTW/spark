* Build Docker image

```docker build -t spark .```

* Run Spark in Container : 

```docker run -v `{pwd}`/input:/input -p 4040:4040 -it spark```

* Run Spark and Hbase docker-compose : 

```docker-compose up -d```

* Run Wordcount program :

Run following code on scala console of docker container

```
val textFile = sc.textFile("/input/txtfile.txt")
val counts = textFile.flatMap(line => line.split(" ")).map(word => (word, 1)).reduceByKey(_ + _)
counts.saveAsTextFile("/input/result")
```
 
 * Access Spark Web UI

 [http://localhost:4040](http://localhost:4040)

 [Hbase docker readme](https://github.com/dajobe/hbase-docker)
 
