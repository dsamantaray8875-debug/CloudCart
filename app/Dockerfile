FROM eclipse-temurin:17-jre

WORKDIR /app

RUN useradd --system --uid 10001 --no-create-home cloudcart

COPY --chown=10001:10001 target/cloudcart-1.0.0.jar app.jar

USER 10001:10001

ENTRYPOINT ["java", "-jar", "app.jar"]
