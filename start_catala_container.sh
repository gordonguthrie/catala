#!/bin/bash
docker run \
-it \
--name catala \
--mount type=bind,source="$(pwd)"/tmp,target=/share \
catala