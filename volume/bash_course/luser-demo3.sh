#!/bin/bash

echo "Your UID is ${UID}"

UID_TO_TEST_FOR='0'

if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
	echo "Your UID does not match"
	exit 1
else
	echo "Your UID matches"
fi


