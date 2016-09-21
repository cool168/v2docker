# v2ray-client
Test for v2ray

docker run -t -p 8123:8123 -e LOCAL_PORT=8123 -e SERVER_ADDR="v2ray.com" -e SERVER_PORT=10086 -e SERVER_UUID="293c95b0-a4a2-47d5-b6eb-da8e6894e7b8" -e SERVER_ALTER_ID="4" -e ENABLE_OUTCFG="no" cool168/v2ray-client ./v2ray-client.sh
