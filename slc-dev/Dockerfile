FROM binet/slc-base
MAINTAINER Sebastien Binet "binet@cern.ch"

## install useful programs for development
RUN yum install -y \
    autoconf automake \
    bash-completion \
    binutils-devel bzip2-devel bzip2 \
    file \
    gcc gcc-c++ git glibc-devel glibc-static \
    libtool libXpm-devel libXft-devel libXext-devel \
    m4 make \
    ncurses-devel \
    patch \
    readline readline-devel \
    tar texinfo

## install go
RUN curl https://go.googlecode.com/files/go1.2.1.linux-amd64.tar.gz | \
    tar -C /usr/local -zxf -
RUN /bin/ln -f /usr/local/go/bin/go    /usr/local/bin/go
RUN /bin/ln -f /usr/local/go/bin/godoc /usr/local/bin/godoc
RUN /bin/ln -f /usr/local/go/bin/gofmt /usr/local/bin/gofmt

