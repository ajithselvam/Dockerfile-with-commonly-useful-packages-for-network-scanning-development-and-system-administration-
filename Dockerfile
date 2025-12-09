FROM ubuntu:22.04

LABEL maintainer="AJITH SELVAM N"

# Avoid prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update and install packages
RUN apt-get update && \
    apt-get install -y \
    # Network Tools
    nmap \
    netcat \
    net-tools \
    iputils-ping \
    traceroute \
    dnsutils \
    curl \
    wget \
    tcpdump \
    iproute2 \
    iptables \
    # Development Tools
    git \
    vim \
    nano \
    build-essential \
    python3 \
    python3-pip \
    # System Utilities
    htop \
    tree \
    unzip \
    zip \
    ca-certificates \
    gnupg \
    lsb-release \
    software-properties-common \
    # Security Tools
    openssh-client \
    openssl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /root

CMD ["bash"]

CMD ["bash"]
