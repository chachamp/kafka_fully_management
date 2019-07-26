FROM confluentinc/cp-kafka-connect:5.2.2

ENV CONNECT_PLUGIN_PATH="/usr/share/java,/usr/share/confluent-hub-components"

COPY /mssql-jdbc-6.4.0.jre9.jar /usr/share/java/kafka-connect-jdbc
COPY /mssql-jdbc-6.4.0.jre8.jar /usr/share/java/kafka-connect-jdbc
COPY /mssql-jdbc-6.4.0.jre7.jar /usr/share/java/kafka-connect-jdbc

RUN confluent-hub install --no-prompt confluentinc/kafka-connect-datagen:latest
