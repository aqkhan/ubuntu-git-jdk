FROM ubuntu:22.04

# Avoid prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y git default-jdk default-jre && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
