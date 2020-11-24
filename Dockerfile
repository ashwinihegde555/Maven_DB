FROM alpine/git as repo

MAINTAINER  ashwini.h2397@gmail.com 

WORKDIR /app
RUN git clone https://github.com/ashwinihegde555/Maven_DB.git


FROM maven as build
WORKDIR /app
RUN mvn install


FROM openjdk
WORKDIR /app 



EXPOSE 8080


CMD ["java", "-war", "RegApp2-0.0.1-SNAPSHOT.war"] 
