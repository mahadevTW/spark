1. Build Docker image

```docker build -t spark .```

2. Run Spark in Container : 

```docker run -v `{pwd}`/input:/input -it spark```

3. Run Wordcount program :

Run following code on scala console of docker container

```
val textFile = sc.textFile("/input/txtfile.txt")
val counts = textFile.flatMap(line => line.split(" ")).map(word => (word, 1)).reduceByKey(_ + _)
counts.saveAsTextFile("/input/result")
```