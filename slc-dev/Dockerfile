FROM binet/slc-base
MAINTAINER Sebastien Binet "binet@cern.ch"

## install useful programs for development
RUN yum install -y \
    gcc gcc-c++ gcc-gfortran \
    git \
    patch

## install go
RUN curl https://go.googlecode.com/files/go1.2.1.linux-amd64.tar.gz | \
    tar -C /usr/local -zxf -
RUN /bin/ls -f /usr/local/go/bin/go    /usr/local/bin/go
RUN /bin/ls -f /usr/local/go/bin/godoc /usr/local/bin/godoc
RUN /bin/ls -f /usr/local/go/bin/gofmt /usr/local/bin/gofmt

