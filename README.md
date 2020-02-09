## rclone - for my unraid nas to upload encrpyted to google drive
Uses absolute paths as needed

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
See rclone.config.example for example of what is required or pull from working rclone instance
``
```
cp config/rclone.conf.example config/rclone.conf
