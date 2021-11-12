#!/bin/bash

echo 'Stop running alpine sandbox container'
docker kill alpine_sandbox
echo 'Remove alpine sandbox container'
docker rm alpine_sandbox
echo 'Remove alpine sandbox image'
docker image rm alpine_sandbox
echo 'Build new alpine image'
docker build -t alpine_sandbox -f containers/alpine_sandbox/Dockerfile .
echo 'Set Up Environment'
docker run --name alpine_sandbox -itd -v $PWD/volume:/root alpine_sandbox
docker exec -it alpine_sandbox /bin/bash -c ./scripts/vim_setup.sh
