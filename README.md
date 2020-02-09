## rclone - rsync for cloud storage
Rclone is a command line programme to sync files and directories.

## Permissions
chmod a+x docker-entrypoint.sh

## Docker build

``
docker build --build-arg VERSION=v1.50.0 --build-arg ARCH=amd64 -t rclonesync .
``

## Docker Run
docker run -v /root/rclone-dockerfile/config/:/config -v /usr/mnt:/media rclonesync:latest
- ## Volume Data 
Mount whatever
 
- ## Volume Config 
See rclone.config.example for example of what is required
``
```
cp config/rclone.conf.example config/rclone.conf
