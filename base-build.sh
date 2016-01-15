#!/bin/bash

LOCAL_PATH="$( cd "$( dirname ${BASH_SOURCE[0]} )" && pwd )"

cd ${LOCAL_PATH}

./base-pre-build.sh || exit 1
