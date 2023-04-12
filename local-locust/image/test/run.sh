#!/bin/bash

LOCUST="/usr/local/bin/locust"
LOCUS_OPTS="--host=$TARGET_HOST"
cd /test || exit

if [[ "$LOCUST_MODE" = "master" ]]; then
    LOCUS_OPTS="$LOCUS_OPTS --master"
elif [[ "$LOCUST_MODE" = "worker" ]]; then
    LOCUS_OPTS="$LOCUS_OPTS --worker --master-host=$LOCUST_MASTER"
fi

$LOCUST "$LOCUS_OPTS"