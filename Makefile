build: comment post ui cloudprober prometheus mongodb_exporter alertmanager telegraf grafana
push: push_comment push_post push_ui push_cloudprober mongodb_exporter push_alertmanager push_telegraf push_grafana

comment:
		cd src/comment && bash docker_build.sh

post:
		cd src/post-py && bash docker_build.sh

ui:
		cd src/ui && bash docker_build.sh

prometheus:
		cd monitoring/prometheus && docker build -t ${USER_NAME}/prometheus .

cloudprober:
		cd monitoring/cloudprober && docker build -t ${USER_NAME}/cloudprober .

mongodb_exporter:
		cd monitoring/mongodb_exporter && docker build -t ${USER_NAME}/mongodb-exporter .

alertmanager:
		cd monitoring/alertmanager && docker build -t ${USER_NAME}/alertmanager .

telegraf:
		cd monitoring/telegraf && docker build -t ${USER_NAME}/telegraf .

grafana:
		cd monitoring/grafana && docker build -t ${USER_NAME}/grafana .


push_comment:
		docker push ${USER_NAME}/comment

push_post:
		docker push ${USER_NAME}/post

push_ui:
		docker push ${USER_NAME}/ui

push_cloudprober:
		docker push ${USER_NAME}/cloudprober

push_prometheus:
		docker push ${USER_NAME}/prometheus

push_mongodb_exporter:
		docker push ${USER_NAME}/mongodb-exporter

push_alertmanager:
		docker push ${USER_NAME}/alertmanager

push_telegraf:
		docker push ${USER_NAME}/telegraf

push_grafana:
		docker push${USER_NAME}/grafana