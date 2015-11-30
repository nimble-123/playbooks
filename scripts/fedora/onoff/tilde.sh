#!/bin/bash -e
# Add a systemd service to fix the Macintosh ~ key on boot 

cat << EOF > /etc/systemd/system/tilde.service
[Unit]
Description=Fix Macintosh Tilde Key

[Service]
Type=oneshot
ExecStart=/bin/sh -c '/usr/bin/echo 0 > /sys/module/hid_apple/parameters/iso_layout'

[Install]
WantedBy=multi-user.target
EOF

# run oneshot service on every boot
systemctl enable tilde.service

# run oneshot service now
systemctl start tilde.service
