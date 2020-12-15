FROM debian:stretch-slim

RUN \
    apt update -y && \
    apt install -y \
                curl \
                jq && \
    curl https://get.helm.sh/helm-v3.4.1-linux-amd64.tar.gz -o /tmp/helm-v3.4.1-linux-amd64.tar.gz && \
    tar -zxvf /tmp/helm-v3.4.1-linux-amd64.tar.gz && \
    ls -la /tmp && ls -la && \
    mv linux-amd64/helm /usr/local/bin/helm && \
    chmod +x /usr/local/bin/helm && \
    helm repo add stable https://charts.helm.sh/stable && \
    rm -rf linux-amd64 && \
    curl -fsSL https://get.docker.com | sh && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
