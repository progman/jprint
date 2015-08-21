#!/bin/bash

SCRIPT_PATH=$(which ${0});

if [ -L "${SCRIPT_PATH}" ]; # link
then
	SCRIPT_PATH=$(readlink ${SCRIPT_PATH});
fi

export DIR=${PWD};
cd $(dirname ${SCRIPT_PATH});

export FILE="${1}";
if [ "${FLAG_SHIFT}" == "" ];
then
	export FLAG_SHIFT="true";
fi

if [ "${FILE}" == "" ];
then
	echo "example: ${0} test.json"
	exit 0;
fi

if [ "$(which nodejs)" == "" ] && [ "$(which node)" == "" ];
then
	echo "ERROR: nodejs not found";
	exit 1;
fi

if [ "$(which nodejs)" != "" ];
then
	nodejs jprint.js
else
	node jprint.js
fi

exit 0;
