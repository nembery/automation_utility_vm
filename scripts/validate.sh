#!/bin/bash
set -e

if [[ ! -f /root/gcloud-service-key.json ]]; then
    echo $GCLOUD_SERVICE_KEY | base64 -d > /root/gcloud-service-key.json
fi

#

NAME="$1"

if [[ -z "$NAME" ]]; then
    echo "please specify the name as the first runtime argument"
    exit 1
fi

packer validate $NAME.json
