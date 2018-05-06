FROM openjdk:8
ENV CPY_PATH "./out/production/Testing Code Challenge/"
COPY ${CPY_PATH} /tmp
COPY ./input.csv /tmp/input.csv
WORKDIR /tmp
ENTRYPOINT ["java","project.Main"]
