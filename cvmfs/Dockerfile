##
## binet/cvmfs
## A container where CernVM-FS is up and running
##
FROM binet/slc-base
MAINTAINER Sebastien Binet "binet@cern.ch"

USER root
ENV USER root
ENV HOME /root
ENV VO_LHCB_SW_DIR /cvmfs/lhcb.cern.ch
ENV MYSITEROOT     /cvmfs/lhcb.cern.ch/lib

# install cvmfs repos
ADD etc-yum-cernvm.repo /etc/yum.repos.d/cernvm.repo

# Install rpms
RUN yum update -y && yum -y install \
    cvmfs cvmfs-init-scripts cvmfs-auto-setup \
    freetype fuse \
    man nano openssh-server openssl098e libXext libXpm \
    SL_no_colorls 

WORKDIR /root

## add files last (as this invalids caches)
ADD dot-pythonrc.py  $HOME/.pythonrc.py
ADD dot-bashrc       $HOME/.bashrc

ADD etc-cvmfs-default-local /etc/cvmfs/default.local
ADD etc-cvmfs-lhcb-local    /etc/cvmfs/config.d/lhcb.cern.ch.local
ADD etc-cvmfs-domain-local  /etc/cvmfs/domain.d/cern.ch.local

## start autofs to allow auto-mount of CernVM-FS volumes
#RUN service autofs start

ADD run-cvmfs.sh /root/run-cvmfs.sh
RUN mkdir -p \
    /cvmfs/atlas.cern.ch /cvmfs/atlas-condb.cern.ch \
    /cvmfs/lhcb.cern.ch

RUN echo "atlas.cern.ch /cvmfs/atlas.cern.ch cvmfs defaults 0 0" >> /etc/fstab && \
    echo "atlas-condb.cern.ch /cvmfs/atlas-condb.cern.ch cvmfs defaults 0 0" >> /etc/fstab && \
    echo "lhcb.cern.ch /cvmfs/lhcb.cern.ch cvmfs defaults 0 0" >> /etc/fstab


## EOF

