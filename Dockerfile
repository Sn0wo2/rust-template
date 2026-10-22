FROM cgr.dev/chainguard/wolfi-base

ARG TARGETPLATFORM
ARG BIN_NAME=app

WORKDIR /app

RUN apk add --no-cache ca-certificates libgcc && chown 65532:65532 /app

COPY $TARGETPLATFORM/$BIN_NAME /usr/local/bin/app

USER 65532:65532

ENTRYPOINT ["/usr/local/bin/app"]
