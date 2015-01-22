FROM debian:wheezy

ADD . /build/
RUN /build/build.sh

EXPOSE 25 80

ENTRYPOINT ["/usr/sbin/runsvdir-start"]