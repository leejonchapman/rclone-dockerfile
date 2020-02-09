#!/bin/bash
/usr/bin/rclone --config /config/rclone.conf sync /media google_enc:raid_set --ignore-existing --exclude /mnt/user/system --exclude /mnt/user/domains --exclude /mnt/user/appdata --progress --verbose
