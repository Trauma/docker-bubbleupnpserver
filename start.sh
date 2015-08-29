#!/bin/bash

set -e
set -x
export DEBIAN_FRONTEND=noninteractive

java -Xss256k -Djava.awt.headless=true -Djava.net.preferIPv4Stack=true -Dfile.encoding="UTF-8" -jar /usr/share/bubbleupnpserver/BubbleUPnPServerLauncher.jar
