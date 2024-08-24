#!/bin/sh

# install dependencies
dnf -y install wget php unzip

#Make a pod web dir and move our file there
mkdir /pod
mv -f envars/envars.php /pod/index.php

# Launch PHP as a daemon to the pod web dir
/bin/php -S 0.0.0.0:80 -t /pod/ > /var/log/php_pod.log 2>&1
