#!/bin/sh


set -e

cd $(dirname $0)

image_name=captaincoordinates/stac-pydantic-2.0.3-import-bug

docker build -t $image_name .
docker run --rm $image_name python -c "from stac_pydantic import Item"
