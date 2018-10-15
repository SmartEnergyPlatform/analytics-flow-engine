FROM golang

RUN go get -u github.com/golang/dep/cmd/dep

COPY . /go/src/analytics-executor
WORKDIR /go/src/analytics-executor

RUN dep ensure
RUN go build

EXPOSE 8000

CMD ./analytics-executor
