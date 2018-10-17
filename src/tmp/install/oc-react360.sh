#!/bin/bash
set -e
set -x

chmod a+rwx /tmp
source /tmp/install/functions.sh

create_user_and_group

npm install -g react-vr-cli@${REACTVR_VERSION} react@${REACT_VERSION} 

cleanup

