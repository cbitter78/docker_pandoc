PROJECT=pandoc
VERSION=1.0.0
RELEASE=0
REGISTRY=hub.docker.com
NAMESPACE=cbitter78

build:
	docker build -t ${REGISTRY}/${NAMESPACE}/${PROJECT}:${VERSION}-${RELEASE} .

publish: build
	docker push ${REGISTRY}/${NAMESPACE}/${PROJECT}:${VERSION}-${RELEASE}

