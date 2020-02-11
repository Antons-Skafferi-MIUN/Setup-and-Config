#!/bin/bash
DIRECTORY=$(cd `dirname $0` && pwd)
cd $DIRECTORY
cd ..
ls | xargs -I{} git -C {} pull
