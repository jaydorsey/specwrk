#!/bin/sh

exec puma --port ${PORT:-$SPECWRK_SRV_PORT} --bind tcp://0.0.0.0 --threads 1 --workers 0 --silent
