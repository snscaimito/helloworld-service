FROM ubuntu:latest

COPY build/libs/helloworld-service-0.1.0.jar /opt/helloworld/

RUN java -jar /opt/helloword/helloworld-service-0.1.0.jar
