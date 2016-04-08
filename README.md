docker-netdata
==============

_v1.0 - 20160408_

A little Dockerfile for running the awesome [Netdata](https://github.com/firehol/netdata/blob/master/README.md) software in a container.

## Running ## 

After building the image, run it with:

    docker run -v /:/host \
               -p 80:19999 \
               -d netdata

Substituting, of course, the image name you used when building.  You can view the Netdata screen by opening your browser to http://localhost/ or,  alternatively, change the port mapping in the run command.
