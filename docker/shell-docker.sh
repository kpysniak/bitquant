#!/bin/bash
export LANG=C LC_ALL=C
exec sudo nsenter --target $(sudo docker inspect --format {{.State.Pid}} $1) --mount --uts --ipc --net --pid
