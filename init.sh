
#!/bin/sh

CONF="/etc/v2ray/client-config.json"

if [ $ENABLE_OUTCFG = "no" ]; then
	
	sed -i "s/LOCAL_PORT/${LOCAL_PORT}/g" $CONF
	sed -i "s/SERVER_ADDR/${SERVER_ADDR}/g" $CONF
	sed -i "s/SERVER_PORT/${SERVER_PORT}/g" $CONF
	sed -i "s/SERVER_UUID/${SERVER_UUID}/g" $CONF
	sed -i "s/SERVER_ALTER_ID/${SERVER_ALTER_ID}/g" $CONF
	
fi

/usr/bin/v2ray/v2ray -config $CONF
