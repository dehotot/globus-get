#!/bin/bash
set -e

MYPROXY_SERVER_DN=$1
REMOTE_SERVER=$2
REMOTE_USERNAME=$3
REMOTE_PASSWORD=$4

echo 'getting host certificates from remote MyProxy...'
export MYPROXY_SERVER_DN
myproxy-get-trustroots -s $REMOTE_SERVER -b --verbose
echo ''

echo 'log on to remote MyProxy...'
echo $REMOTE_PASSWORD | \
	myproxy-logon -s $REMOTE_SERVER -l $REMOTE_USERNAME --verbose -N --stdin_pass
echo ''

echo 'OK'