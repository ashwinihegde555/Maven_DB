FROM alpine/git as repo
WORKDIR /app
RUN git clone https://github.com/ashwinihegde555/Maven_DB.git


FROM maven as build
WORKDIR /app
COPY --from=repo /app/Maven_DB /app 
RUN mvn install


FROM openjdk
WORKDIR /app
COPY --from=build /app/target/Maven_DB.war /app 



EXPOSE 8080


CMD ["java", "-war", "Maven_DB.war"] 
