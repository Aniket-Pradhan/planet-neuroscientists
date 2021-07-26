# Based on Dockerfile example from https://github.com/feedreader/pluto.starter
FROM fedora:latest

RUN dnf -y update && \
    dnf -y install \
      git \
      sqlite-devel \
      ruby \
      sudo
      

RUN export uid=1000 gid=1000 && \
    groupadd -g 1000 developer && \
    useradd -g ${gid} -u ${uid} -s /bin/bash developer && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

COPY . /home/developer/planet-neuroscientists
RUN chown -R developer:developer /home/developer/

USER developer
WORKDIR /home/developer

CMD ["/bin/bash"]
