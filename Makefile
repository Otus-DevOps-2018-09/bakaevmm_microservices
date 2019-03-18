build: comment post ui cloudprober prometheus mongodb_exporter
push: push_comment push_post push_ui push_cloudprober mongodb_exporter

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