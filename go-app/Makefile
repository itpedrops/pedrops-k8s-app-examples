build:
  CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -v -a -o release/go-github-action-helloworld

docker:
  docker build -t itpedrops/go-github-action-helloworld .

test:
  go test -v .
