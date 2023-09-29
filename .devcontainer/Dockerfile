# Configure base image
FROM docker.io/rockylinux:9.2

# Copy ansible configuration
RUN mkdir /etc/ansible
COPY ansible.cfg /etc/ansible

# Copy requirements
COPY requirements.txt /tmp/requirements.txt

# Install packages
RUN dnf -y update && dnf -y install \
    git \
    python3 \
    python3-pip \
    iputils \
    sshpass \
    maven \
    && dnf clean all

ARG GOOGLE_CHROME_VERSION=115.0.5790.170
RUN curl -o /tmp/google-chrome-stable.rpm https://dl.google.com/linux/chrome/rpm/stable/x86_64/google-chrome-stable-$GOOGLE_CHROME_VERSION-1.x86_64.rpm
RUN dnf install -y /tmp/google-chrome-stable.rpm

# Install requirements
RUN pip3 install -r /tmp/requirements.txt

# Configure bash
RUN touch ~/.bashrc
RUN echo "alias ls='ls --color'" >> ~/.bashrc
RUN echo "alias ll='ls -l --color'" >> ~/.bashrc
