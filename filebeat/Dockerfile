ARG BUILD_FROM

FROM $BUILD_FROM

MAINTAINER Bert Roos

ARG BUILD_ARCH

COPY run.sh /
RUN chmod a+x /run.sh

RUN FILEBEAT_VERSION=8.6.1; \
    FILEBEAT_ARCH="${BUILD_ARCH}"; \
    if [ "${BUILD_ARCH}" = "aarch64" ]; then FILEBEAT_ARCH="arm64"; fi; \
    if [ "${BUILD_ARCH}" = "amd64" ]; then FILEBEAT_ARCH="x86_64"; fi; \
    echo "https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-${FILEBEAT_VERSION}-linux-${FILEBEAT_ARCH}.tar.gz" > src_url; \
    curl https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-${FILEBEAT_VERSION}-linux-${FILEBEAT_ARCH}.tar.gz -o filebeat.tar.gz && \
    tar xzvf filebeat.tar.gz && \
    rm filebeat.tar.gz && \
    mv filebeat-${FILEBEAT_VERSION}-linux-${FILEBEAT_ARCH} /filebeat && \
    mv src_url /filebeat && \
    cd /filebeat && \
    cp filebeat /usr/bin

WORKDIR /filebeat/

CMD [ "/run.sh" ]
