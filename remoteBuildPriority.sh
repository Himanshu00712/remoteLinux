#!/bin/sh

BUILD=$1
BUILD="$(tr ':' '|' <<<"$BUILD")"
echo "Prioritized Build : $BUILD"

sleep 5s

PID=`ps -eaf | grep java | grep -v grep | awk '{print $2}'`
if [[ "" != "$PID" ]]; then
       echo "killing pid : $PID"
       kill -9 $PID
fi

sleep 5s

cd "/Users/crprd/MacResolver"
pwd

sed -i.bak -E "s/dir\.prioritizeBuilds\=.*/dir.prioritizeBuilds=$BUILD/" crashresolver.properties
echo "Config file changed"

sleep 5s

sh ./macCrashResolverAutomator.sh &


sleep 5s

tail -20f logs/crashresolver.log
