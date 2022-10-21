#! /bin/sh

$SNAP/usr/lib/jvm/java-8-openjdk-amd64/bin/java \
  -Dfile.encoding=UTF-8 -Djava.awt.headless=true \
  -Dapple.awt.UIElement=true -Dunifi.core.enabled=false \
  -Xmx1024M -XX:+UseParallelGC -XX:+ExitOnOutOfMemoryError \
  -XX:+CrashOnOutOfMemoryError -XX:ErrorFile=$SNAP_DATA/logs/hs_err_pid%p.log \
  -jar /usr/lib/unifi/lib/ace.jar start
