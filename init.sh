
#!/bin/sh

INSTALL_FLAG="/v2ray-client.installed"	
CONF="/client-config.json"

if [ ! -f "$INSTALL_FLAG" ]; then
	
	sed -i "s/LOCAL_PORT/${LOCAL_PORT}/g" $CONF
	sed -i "s/SERVER_ADDR/${SERVER_ADDR}/g" $CONF
	sed -i "s/SERVER_PORT/${SERVER_PORT}/g" $CONF
	sed -i "s/SERVER_UUID/${SERVER_UUID}/g" $CONF
	sed -i "s/SERVER_ALTER_ID/${SERVER_ALTER_ID}/g" $CONF
	
	touch $INSTALL_FLAG
fi

/app/v2ray/v2ray -config $CONF
