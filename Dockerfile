FROM centos:centos7
MAINTAINER Chris Collins <collins.christopher@gmail.com>

ENV PKGS="zlib-devel gcc make git autoconf autogen automake pkgconfig nodejs"

RUN yum install -y $PKGS \
    && yum clean all

RUN git clone https://github.com/firehol/netdata.git --depth=1 \
    && pushd netdata \
    && bash -x netdata-installer.sh \
    && popd

EXPOSE 19999

ENTRYPOINT [ "/usr/sbin/netdata" ]
CMD [ "-ch", "/host", "-nd" ]
