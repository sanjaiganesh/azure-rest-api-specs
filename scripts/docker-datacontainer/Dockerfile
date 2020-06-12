FROM alpine:3.8

RUN apk update && \
    apk add git

RUN mkdir -p /usr/data/openapispecs/

WORKDIR /usr/data/
RUN git clone https://github.com/sanjaiganesh/azure-rest-api-specs.git ./openapispecs

WORKDIR /usr/data/scripts/
COPY run.sh run.sh
RUN chmod +x run.sh

ENTRYPOINT ["echo", "OpenAPI spec data container initialization completed successfully."]
