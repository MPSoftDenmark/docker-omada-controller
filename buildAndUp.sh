
docker stop omada-controller
docker rm omada-controller

docker build --tag mpsoftdenmark/omada-controller:4.1-arm64 .

docker run \
	-p 8088:8088/tcp \
	-p 8043:8043/tcp \
	-p 8843:8843/tcp \
	-p 27001:27001/udp \
	-p 27002:27002/udp \
	-p 29810:29810/udp \
	-p 29811:29811/udp \
	-p 29812:29812/udp \
	-p 29813:29813/udp \
	--name omada-controller \
	--restart unless-stopped \
	--net host \
	-e MANAGE_HTTPS_PORT=8043 \
	-e PORTAL_HTTP_PORT=8088 \
	-e PORTAL_HTTPS_PORT=8843 \
	-e SHOW_SERVER_LOGS=true \
	-e SHOW_MONGODB_LOGS=false \
	-e SSL_CERT_NAME="tls.crt" \
	-e SSL_KEY_NAME="tls.key" \
	-e TZ=Etc/UTC \
	-v omada-data:/opt/tplink/EAPController/data \
	-v omada-work:/opt/tplink/EAPController/work \
	-v omada-logs:/opt/tplink/EAPController/logs \
mpsoftdenmark/omada-controller:4.1-arm64




docker run \
	-p 8088:8088/tcp \
	-p 8043:8043/tcp \
	-p 8843:8843/tcp \
	-p 27001:27001/udp \
	-p 27002:27002/udp \
	-p 29810:29810/udp \
	-p 29811:29811/udp \
	-p 29812:29812/udp \
	-p 29813:29813/udp \
	--name omada-controller \
	--restart unless-stopped \
	-e MANAGE_HTTPS_PORT=8043 \
	-e PORTAL_HTTP_PORT=8088 \
	-e PORTAL_HTTPS_PORT=8843 \
	-e SHOW_SERVER_LOGS=true \
	-e SHOW_MONGODB_LOGS=false \
	-e SSL_CERT_NAME="tls.crt" \
	-e SSL_KEY_NAME="tls.key" \
	-e TZ=Etc/UTC \
	-v omada-data:/opt/tplink/EAPController/data \
	-v omada-work:/opt/tplink/EAPController/work \
	-v omada-logs:/opt/tplink/EAPController/logs \
mpsoftdenmark/omada-controller:4.1-arm64
