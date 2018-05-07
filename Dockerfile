FROM openjdk:8
ENV CPY_PATH "./src"
COPY ${CPY_PATH} /tmp
COPY ./input.csv /tmp/input.csv
WORKDIR /tmp
RUN javac project/*.java
ENTRYPOINT ["java","project.Main"]