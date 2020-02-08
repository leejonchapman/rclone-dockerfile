## rclone - rsync for cloud storage
Rclone is a command line programme to sync files and directories.

## Docker build

docker build \
--build-args VERSION=v1.50.0 \
-- build-args ARCH=amd64
-t rclonesync \
.
``

## Docker Run
docker run -d -v data:/data -v config:/config rclonesync:latest
- ## Volume Data 
tbc
 
- ## Volume Config 
See rclone.config.example for example of what is required
``
```
cp config/rclone.config.example config/rclone.config
