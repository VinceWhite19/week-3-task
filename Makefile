APP=$(shell basename $(shell git remote get-url origin))
REGISTRY=vincewhite19
VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
TARGETOS=linux
TARGETARCH=$(shell dpkg --print-architecture)

format:
	gofmt -s -w ./

lint:
	golint

test:
	go test -v		

get: 
	go get

build: format get
	CGO_ENABLED=0 GOOS=${TARGETOS} GOARCH=${TARGETARCH} go build -v -o kbot -ldflags="-X 'github.dev/VinceWhite19/kbot/cmd.appVersion=${VERSION}'"

image:
	docker build . -t "${REGISTRY}/${APP}:${TARGETARCH}"  --build-arg TARGETARCH=${TARGETARCH}

push:
	docker push ${REGISTRY}/${APP}:${TARGETARCH}

clean:
	rm -rf kbot && docker rmi -f ${REGISTRY}/${APP}:${TARGETARCH}