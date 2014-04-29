FROM binet/slc-base
MAINTAINER Sebastien Binet "binet@cern.ch"

## install useful programs for development
RUN yum install \
    gcc gcc-c++ gcc-fortran \
    git \
    patch

## install go
RUN curl https://go.googlecode.com/files/go1.2.1.linux-amd64.tar.gz | \
    tar zxf -

