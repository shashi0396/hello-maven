FROM eclipse-temurin:17-jre
WORKDIR /app
COPY target/hello-maven-1.0-SNAPSHOT.jar app.jar
COPY . .
EXPOSE 8000
ENTRYPOINT ["java", "-jar", "app.jar"]