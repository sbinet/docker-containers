##
## binet/gaudi
## A container where the GAUDI software stack has been installed
##
FROM binet/slc-base
MAINTAINER Sebastien Binet "binet@cern.ch"

USER root
ENV USER root

ENV MYSITEROOT /opt/lhcb
ENV CMTCONFIG x86_64-slc6-gcc48-opt

RUN mkdir -p $MYSITEROOT


## install some system dependencies
RUN yum install -y \
    bzip2 \
    freetype \
    tar

## retrieve install
RUN cd $MYSITEROOT && \
    curl -O -L http://lhcbproject.web.cern.ch/lhcbproject/dist/install_project.py && \
    chmod +x ./install_project.py

## install (source+binaries)
RUN cd $MYSITEROOT && \
    ./install_project.py -b GAUDI v24r2

## clean-up
RUN /bin/rm -rf $MYSITEROOT/{tmp,targz} && \
    mkdir $MYSITEROOT/{tmp,targz}

## EOF

