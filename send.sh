#!/bin/bash
curl -L -H 'Content-Type: application/json' -X POST -d @docker.json 192.168.65.121:11701/scheduler/iso8601 
