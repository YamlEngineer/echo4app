FROM golang:1.22.0

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY server.go .

RUN CGO_ENABLED=0 GOOS=linux go build -o build/app
EXPOSE 8000

CMD /app/build/app