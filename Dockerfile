FROM alpine:3.7.3

RUN apk update && apk add \
    alpine-sdk      \
    git             \
    ca-certificates \
    ghc             \
    gmp-dev         \
    zlib-dev        \
    shadow          \
    postgresql-dev  \
    curl

ENV PATH=/root/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN curl -sSL https://get.haskellstack.org/ | sh
RUN mkdir -p /root/.stack/global-project
ADD stack-global.yaml /root/.stack/global-project/stack.yaml