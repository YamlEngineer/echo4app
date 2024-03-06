FROM golang:1.12
WORKDIR /app
ADD server.go .
EXPOSE 8000
ENTRYPOINT [ "go", "run",  "server.go"]