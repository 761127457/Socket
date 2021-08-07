#!/bin/bash
dos2unix *.sh
chmod 744 *.sh

#echo "query pid info"
#./querypid.sh

./killpid.sh
#sleep 10
./compile.sh