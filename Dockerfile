# Container image that runs your code
FROM ubuntu:22.04

RUN apt update && apt install curl -y
RUN apt install git -y
ADD http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_amd64.deb /tmp
RUN apt install /tmp/libssl1.1_1.1.1f-1ubuntu2_amd64.deb -y
ADD https://github.com/Alokit-Innovations/dev-profiler/releases/download/0.2.3/devprofiler.deb /tmp
RUN apt install /tmp/devprofiler.deb -y

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY . /root
RUN chmod +x /root/entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/root/entrypoint.sh"]
