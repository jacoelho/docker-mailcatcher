FROM debian:wheezy

ADD . /
RUN /build.sh && rm -fr /build

EXPOSE 25 80

ENTRYPOINT ["/usr/sbin/runsvdir-start"]
