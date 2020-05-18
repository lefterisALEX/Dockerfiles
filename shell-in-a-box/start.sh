#!/bin/bash

if [ $# -eq 0 ]; then
    while true; do
        sleep 6000
    done
else
    exec "$@"
fi

