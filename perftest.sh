#!/usr/bin/env bash

#from https://www.badunetworks.com/performance-testing-curl-part-2-scripting/
REQUESTS=3000
REQUESTS_PARALLEL=300

time seq 1 ${REQUESTS} | xargs -n1 -P${REQUESTS_PARALLEL} bash -c 'i=$0; url="http://localhost:9001/${i}"; curl --output /dev/null -s $url'