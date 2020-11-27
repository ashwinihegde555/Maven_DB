FROM alpine/git as repo

MAINTAINER  ashwini.h2397@gmail.com 

WORKDIR C:/WINDOWS/system32/config/systemprofile/AppData/Local/Jenkins/.jenkins/workspace/mvn
RUN git clone https://github.com/ashwinihegde555/Maven_DB.git

FROM maven:3.5-jdk-8-alpine
WORKDIR C:/WINDOWS/system32/config/systemprofile/AppData/Local/Jenkins/.jenkins/workspace/mvn/pom.xml
RUN mvn clean 


FROM openjdk
WORKDIR  C:/WINDOWS/system32/config/systemprofile/AppData/Local/Jenkins/.jenkins/workspace/mvn

HEALTHCHECK --interval=5s --timeout=3s CMD curl --fail http://localhost:8080 || exit 1
 

EXPOSE 8080


CMD ["java", "-war", "RegApp2-0.0.1-SNAPSHOT.war"] 
