

# Usage
When using this container, have the  ssh port forwarded with a different host port to prevent any conflict.

Be sure to have your git ssh keys generated in the host so that the volume shared with the container.

```
docker --rm -d -p 2222:22 \
    -v /home/git:/home/git \
    lazyarchlinux/simple-git-server
```
