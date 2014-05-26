binet/cvmfs-atlas
=================

A docker container with CVMFS installed, running and configured with ATLAS s/w.

## Usage

Once the container has been built or pulled from the docker-index:

```sh
$ docker run -h dev --privileged -i -t binet/cvmfs-atlas bash
::: mounting FUSE...
CernVM-FS: running with credentials 499:497
CernVM-FS: loading Fuse module... done
CernVM-FS: mounted cvmfs on /cvmfs/atlas.cern.ch
CernVM-FS: running with credentials 499:497
CernVM-FS: loading Fuse module... done
CernVM-FS: mounted cvmfs on /cvmfs/atlas-condb.cern.ch
::: mounting FUSE... [done]

```

Do note the required `--privileged` option (because of FUSE)

