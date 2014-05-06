FROM binet/slc-base
MAINTAINER Sebastien Binet "binet@cern.ch"

USER root
ENV USER root

RUN mkdir -p /opt/lhcb

ENV MYSITEROOT /opt/lhcb
ENV CMTCONFIG x86_64-slc6-gcc48-opt


## install some system dependencies
RUN yum install -y \
	tar

## retrieve install
RUN cd $MYSITEROOT && \
	curl -O -L http://lhcbproject.web.cern.ch/lhcbproject/dist/install_project.py && \
	chmod +x ./install_project.py

## install LHCB (source+binaries)
RUN cd $MYSITEROOT && \
	./install_project.py -b LHCB v37r1
