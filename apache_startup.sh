#!/usr/bin/env sh


# Apache startup commands, to be used with eval command
APACHESTATUS="apachectl status"
APACHESTART="apachectl start"
APACHERESTART="apachectl restart"
APACHESTOP="apachectl stop"

# Apache PID file path, to check if the PID file exist, if not, then start Apache
APACHEPIDPATH="/var/run/httpd.pid"


# if-else condition to check if the file exist, if it does then exit, otherwise start and exit.
if [ -e $APACHEPIDPATH ]; then
        echo "PID file exist! Nothing to do."

else
        echo "What should we do next?"
        eval "$APACHESTART"
fi
