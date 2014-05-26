##
## binet/cvmfs-atlas
## A container where CernVM-FS is up and running
##
FROM binet/cvmfs-base
MAINTAINER Sebastien Binet "binet@cern.ch"

USER root
ENV USER root
ENV HOME /root
ENV VO_ATLAS_SW_DIR       /cvmfs/atlas.cern.ch
ENV ATLAS_LOCAL_ROOT_BASE $VO_ATLAS_SW_DIR/repo/ATLASLocalRootBase

WORKDIR /root

RUN mkdir -p /cvmfs/atlas.cern.ch && \
    mkdir -p /cvmfs/atlas-condb.cern.ch && \
    echo "atlas.cern.ch /cvmfs/lhcb.cern.ch cvmfs defaults 0 0" >> /etc/fstab && \
    echo "atlas-condb.cern.ch /cvmfs/atlas-condb.cern.ch cvmfs defaults 0 0" >> /etc/fstab


## EOF

