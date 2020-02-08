FROM alpine:latest as base

FROM base as builder
ARG VERSION
ARG ARCH

RUN wget https://downloads.rclone.org/$VERSION/rclone-$VERSION-linux-$ARCH.zip
ENV XDG_CONFIG_HOME=/config
RUN unzip rclone-$VERSION-linux-$ARCH.zip
RUN cd rclone-*-linux-$ARCH && \
    cp rclone /usr/bin/ && \
    chown root:root /usr/bin/rclone && \
    chmod 755 /usr/bin/rclone

FROM base

RUN apk -U add ca-certificates && rm -rf /var/cache/apk/*
COPY --from=builder /usr/bin/rclone /usr/bin/rclone

#Define mountable directories.
VOLUME ["/config"]
VOLUME ["/media"]

# Move default config location
ENTRYPOINT ["sh", "-c", "/usr/bin/rclone --config=/config/rclone.conf version"]
