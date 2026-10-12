FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY src ./src
COPY web ./web
COPY data ./data
RUN mkdir -p out && javac --add-modules jdk.httpserver -d out src/payroll/Main.java
ENV PORT=10000
EXPOSE 10000
CMD ["sh", "-c", "java --add-modules jdk.httpserver -Dport=${PORT:-10000} -cp out payroll.Main"]
