** BUILD
docker build \
--build-args VERSION=v1.50.0 \
-- build-args ARCH=amd64
-t rclone \
.

** Config file
See rclone.config.example for example of what is required, cp to rclone.config

** Docker Run

