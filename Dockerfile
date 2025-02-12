FROM golang:1.23

WORKDIR /app

COPY app/go.mod ./
RUN go mod download

COPY app/*.go ./

RUN go build -o main .

EXPOSE 8080

CMD ["./main"]
