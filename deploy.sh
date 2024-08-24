#!/bin/sh

#Make a pod web dir
mkdir /pod

cd /pod
dnf -y install wget php unzip

mv envars.php /pod/index.php

# Launch PHP as a daemon to the pod web dir
/bin/php -S 0.0.0.0:80 -t /pod/ > /var/log/php_pod.log 2>&1
