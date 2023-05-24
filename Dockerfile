FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=build /app/target/colorful-app-1.0.0.jar .
EXPOSE 8080
# Define the command to run the JAR file 
CMD ["java", "-jar", "colorful-app-1.0.0.jar"]