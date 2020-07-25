FROM golang:1.14.6-alpine3.12

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

EXPOSE 3000

CMD ["go", "run", "main.go"]
