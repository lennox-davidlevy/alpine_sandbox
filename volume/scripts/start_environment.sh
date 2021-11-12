#!/bin/bash

printf "Time to start your sandbox!\n"
SANDBOX='alpine_sandbox'

if [ ! "$(docker ps -q -f name=${SANDBOX})" ]; 
	then
    if [ "$(docker ps -aq -f status=exited -f name=${SANDBOX})" ]; 
			then
        # cleanup
        docker rm ${SANDBOX}
    fi
		docker run --name ${SANDBOX} -it -v $HOME/volume:/root ${SANDBOX}
	else
		docker exec -it ${SANDBOX} /bin/bash
fi

#echo stopping sandbox if it is still running
#docker kill alpine_sandbox
#echo removing sandbox if it exists
#docker rm alpine_sandbox
#echo create new sandbox container
#docker run --name alpine_sandbox -it -v /Users/davidlevy/Documents/alpine_sandbox/volume:/root alpine_sandbox 
