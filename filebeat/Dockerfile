ARG BUILD_FROM

FROM $BUILD_FROM

MAINTAINER Bert Roos

COPY run.sh /
RUN chmod a+x /run.sh

RUN FILEBEAT_ARCH=linux-arm64; \
    FILEBEAT_VERSION=8.1.1; \
    curl https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-${FILEBEAT_VERSION}-${FILEBEAT_ARCH}.tar.gz -o /filebeat.tar.gz && \
    tar xzvf filebeat.tar.gz && \
    rm filebeat.tar.gz && \
    mv filebeat-${FILEBEAT_VERSION}-${FILEBEAT_ARCH} filebeat && \
    cd filebeat && \
    cp filebeat /usr/bin

WORKDIR /filebeat/

CMD [ "/run.sh" ]
