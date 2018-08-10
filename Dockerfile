FROM openjdk:8-jdk
WORKDIR /spark
RUN curl http://www-eu.apache.org/dist/spark/spark-2.3.1/spark-2.3.1-bin-hadoop2.7.tgz --output spark.tgz
RUN tar -xvzf spark.tgz -C /spark
WORKDIR /spark
ENTRYPOINT [ "./spark-2.3.1-bin-hadoop2.7/bin/spark-shell" ]
