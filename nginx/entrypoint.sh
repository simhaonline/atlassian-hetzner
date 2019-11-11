#!/bin/sh

# Issue certificate and setup HTTPS to jira & confluences
/opt/certificate.sh &

nginx -g "daemon off;"
