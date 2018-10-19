#FROM openjdk:8-jdk-alpine
FROM openjdk:8
# Install gstreamer and opencv dependencies
RUN \
    apt-get update && apt-get upgrade -y && \
    apt-get install -y libgstreamer1.0-0 \
            gstreamer1.0-plugins-base \
            gstreamer1.0-plugins-good \
            gstreamer1.0-plugins-bad \
            gstreamer1.0-plugins-ugly \
            gstreamer1.0-libav \
            gstreamer1.0-doc \
            gstreamer1.0-tools \
            libgstreamer1.0-dev \
            libgstreamer-plugins-base1.0-dev

VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} app.war
COPY keystore.jks keystore.jks/
COPY keystore.p12  keystore.p12
COPY Meet_ESA_-_The_Space_Agency_For_Europe.webm Meet_ESA_-_The_Space_Agency_For_Europe.webm
COPY Napoli_Campione.webm Napoli_Campione.webm
COPY ESA_Destination_Moon.webm ESA_Destination_Moon.webm
COPY Simply_Red_-_Fake.webm Simply_Red_-_Fake.webm
ENV PROFILE default
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=$PROFILE","-jar","/app.war"]
