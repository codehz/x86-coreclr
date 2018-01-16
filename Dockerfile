FROM ubuntu
COPY install.sh /tmp
COPY build.sh /tmp
RUN /tmp/install.sh
RUN /tmp/build.sh
