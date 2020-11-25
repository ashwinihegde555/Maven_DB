FROM alpine/git as repo

MAINTAINER  ashwini.h2397@gmail.com 

WORKDIR C:/WINDOWS/system32/config/systemprofile/AppData/Local/Jenkins/.jenkins/workspace/mvn
RUN git clone https://github.com/ashwinihegde555/Maven_DB.git


FROM maven as build
WORKDIR C:/WINDOWS/system32/config/systemprofile/AppData/Local/Jenkins/.jenkins/workspace/mvn
RUN mvn install


FROM openjdk
WORKDIR WORKDIR C:/WINDOWS/system32/config/systemprofile/AppData/Local/Jenkins/.jenkins/workspace/mvn



EXPOSE 8080


CMD ["java", "-war", "RegApp2-0.0.1-SNAPSHOT.war"] 
