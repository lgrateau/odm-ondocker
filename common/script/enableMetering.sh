#!/bin/bash

if [ -n "$COM_IBM_RULES_METERING_ENABLE" ]
then
	echo "enable rules metering"
	cd  /config/apps/DecisionService.war/WEB-INF/classes;
	sed -i 's/{pluginClass=HTDS}/{pluginClass=Metering,enable=true},{pluginClass=HTDS}/g' ra.xml

	$SCRIPT/configureMetering.sh
fi
