# lazyarchlinux-dockerfiles
This repo contains my personal dockerfiles for all archlinux image builds.

## Purpose
Development of isolated container applications from the archlinux base image. This repo is useful if you need to develop in an isolated or limited bandwidth environment.  The mirrorlist can point to a local server as shown in the build steps below.

Unlike flatpaks, snap or appimage, this provides a minimalistic solution to container applications specific with archlinux.

## Build
To create a new image use the following steps:
1) run `new-container-image.sh $newimagename`
2) cd into the new image folder and edit the Dockerfile accordingly
3) build image: `docker build -t yourdomain/imagename --build-arg repohost="ip/hostname"`
 - ip/hostname is your local repo server


 ## Future
 [] gui containers
 [] scripts to rebuild images when there are updates in archlinux
