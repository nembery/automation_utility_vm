#!/bin/bash
set -e

if [[ ! -f /root/gcloud-service-key.json ]]; then
    echo $GCLOUD_SERVICE_KEY | base64 -d > /root/gcloud-service-key.json
fi

#
# base.sh DIR TARGET BASE_NAME
NAME="$1"
BASE_NAME="$2"
if [[ -z "$NAME" ]]; then
    echo "please specify the name as first runtime argument"
    exit 1
fi

packer build --force $NAME.json
