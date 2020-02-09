#!/bin/bash
/usr/bin/rclone --config =/config/rclone.conf

/usr/bin/rclone /mnt/user/ google_enc: --ignore-existing --progress --verbose
