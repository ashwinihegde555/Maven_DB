FROM alpine/git as repo
WORKDIR /app
RUN git clone https://github.com/ashwinihegde555/Maven_DB.git


FROM maven as build
WORKDIR /app
COPY --from=repo /app/RegApp2-0.0.1-SNAPSHOT.war /app 
RUN mvn install


FROM openjdk
WORKDIR /app
COPY --from=build /app/target/RegApp2-0.0.1-SNAPSHOT.war /app 



EXPOSE 8080


CMD ["java", "-war", "RegApp2-0.0.1-SNAPSHOT.war"] 
