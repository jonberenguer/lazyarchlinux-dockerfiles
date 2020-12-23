# usage
After image is created, its recommended to run this interactively.
`docker run -it -v /host/path/download:/home/torrentuser/download imagename`

download path is used for host share

## while in the running container
```
transmission-daemon --download-dir "/home/torrentuser/download"
transmission-daemon --dump-settings # verify settings

transmission-daemon

# to download torrent
transmission-remote -a "torrent link / magnet"

# check torrent download
transmission-remote -l

# remove torrent
transmission-remote -t all|ID -r

```
