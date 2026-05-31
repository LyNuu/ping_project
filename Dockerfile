FROM golang:1.26-alpine
WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN go build -o /service ./cmd/main.go
CMD ["/service"]