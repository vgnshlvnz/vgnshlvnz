#!/bin/sh

APACHESTATUS="apachectl status"
APACHESTART="apachectl start"
APACHERESTART="apachectl restart"
APACHESTOP="apachectl stop"

APACHEPIDPATH="/var/run/httpd.pid"

if [ -e $APACHEPIDPATH ]; then
        echo "PID file exist! Nothing to do."

else
        echo "What should we do next?"
        eval "$APACHESTART"
fi
