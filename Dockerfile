FROM phusion/baseimage:0.9.18
MAINTAINER Wang Xuerui <idontknw.wang@gmail.com>

ADD . /build
RUN /build/base-build.sh

CMD ["/sbin/my_init"]
