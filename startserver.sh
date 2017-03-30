#!/bin/bash
cd `dirname $0`

DOCKERPROCESSES=$(ps ax | grep -v grep | grep '/Applications/Docker.app/')
if [ -z "$DOCKERPROCESSES" ]; then
	echo Starting Docker
	open -a Docker
	sleep 25
fi

echo Starting Servers
docker-compose up &
exit