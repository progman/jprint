#!/bin/bash

export FILE="${1}";
if [ "${FLAG_SHIFT}" == "" ];
then
	export FLAG_SHIFT="true";
fi

nodejs jprint.js
