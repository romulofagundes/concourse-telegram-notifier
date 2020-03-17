FROM gliderlabs/alpine:3.7

RUN apk add --no-cache curl bash jq

COPY ./assets/check /opt/resource/check
COPY ./assets/in    /opt/resource/in
COPY ./assets/out   /opt/resource/out

RUN chmod +x /opt/resource/out /opt/resource/in /opt/resource/check
