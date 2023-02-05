# Container image that runs your code
FROM ubuntu:latest

RUN apt update && apt install curl -y
RUN apt install git -y
ADD https://github.com/Alokit-Innovations/dev-profiler/releases/latest/download/Releases_v0.1.1_linux_devprofiler_0.1.1_amd64.deb.gz /tmp
RUN gunzip /tmp/Releases_v0.1.1_linux_devprofiler_0.1.1_amd64.deb.gz && apt install /tmp/Releases_v0.1.1_linux_devprofiler_0.1.1_amd64.deb -y

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY . /root
RUN chmod +x /root/entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/root/entrypoint.sh"]