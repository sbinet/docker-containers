##
## binet/lhcb
## A container where the LHCb software stack (up to DaVinci) has been installed
##
FROM binet/slc-base
MAINTAINER Sebastien Binet "binet@cern.ch"

USER root
ENV USER root
ENV HOME /root

ENV MYSITEROOT /opt/lhcb-sw
ENV CMTCONFIG x86_64-slc6-gcc48-opt

RUN mkdir -p $MYSITEROOT

## install some system dependencies
RUN yum install -y \
    bzip2 \
    freetype \
    tar \
    which

## retrieve install
RUN cd $MYSITEROOT && \
    curl -O -L http://lhcbproject.web.cern.ch/lhcbproject/dist/install_project.py && \
    chmod +x ./install_project.py

## install LHCB (source+binaries)
RUN cd $MYSITEROOT && \
    ./install_project.py -b LHCB v37r1

## clean-up
RUN /bin/rm -rf $MYSITEROOT/{tmp,targz} && \
    mkdir $MYSITEROOT/{tmp,targz}

WORKDIR /root

## add files last (as this invalids caches)
ADD dot-pythonrc.py  $HOME/.pythonrc.py
ADD dot-bashrc       $HOME/.bashrc
ADD dot-bash_profile $HOME/.bash_profile

## EOF

