# lazyarchlinux-dockerfiles
This repo contains my personal the dockerfiles for all arch image builds.


## Purpose
Development of isolated container applications from the archlinux base image. This repo is useful if you need to develop in an isolated or limited bandwidth environment.

Another reason why this repo was created to create isolated applications with affecting the host system.

## Build
when building a new image use the following steps:

1) run `new-container-image.sh $newimagename`
2) cd into the new image folder and edit the Dockerfile accordingly
3) build image: `docker build -t yourdomain/imagename --build-arg repohost="ip/hostname"`
 - ip/hostname is your local repo server
