FROM cgr.dev/chainguard/wolfi-base

ARG TARGETPLATFORM

WORKDIR /app

RUN apk add --no-cache ca-certificates libgcc && chown 65532:65532 /app

COPY --chmod=0755 $TARGETPLATFORM/rust-template /usr/local/bin/rust-template

USER 65532:65532

ENTRYPOINT ["/usr/local/bin/rust-template"]
