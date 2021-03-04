FROM alpine as HUGO

ENV HUGO_VERSION="0.81.0"

RUN apk add --update wget

# Install Hugo.
RUN wget --quiet https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
    tar -xf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
    mv hugo /usr/local/bin/hugo && \
    rm -rf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz

COPY . /hugo-site

# Use Hugo to build the static site files.
RUN hugo -v --source=/hugo-site --destination=/hugo-site/public

FROM bitnami/nginx:latest
COPY --from=HUGO /hugo-site/public/ /opt/bitnami/nginx/html/

# The container will listen on port 8080 (non-privileged) using the TCP protocol.
EXPOSE 8080
