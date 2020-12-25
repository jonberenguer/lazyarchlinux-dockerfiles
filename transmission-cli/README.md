# usage
After image is created/downloaded, its recommended to run this interactively.
`docker run -it -v /host/path/download:/home/cuser/download lazyarchlinux/transmission-cli`

download path is used for host share

## While in the running container
```
# setup the download dir and verify
transmission-daemon --download-dir "/home/cuser/download"
transmission-daemon --dump-settings # verify settings

# run the daemon
transmission-daemon

# to download torrent
transmission-remote -a "torrent link / magnet"

# check torrent download
transmission-remote -l

# remove torrent
transmission-remote -t all|ID -r
```
