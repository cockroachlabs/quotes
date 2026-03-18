FROM golang:1.26 AS builder
WORKDIR /tmp/compile

RUN apt-get update && apt-get install -y ca-certificates && apt-get clean

COPY . .
RUN CGO_ENABLED=0 go build -v -ldflags="-s -w" -o /usr/bin/quotes ./cmd/quotes

# This is triggered from docker-compose.test.yml
FROM builder AS test
RUN go fmt ./...
RUN go vet ./...
RUN go run honnef.co/go/tools/cmd/staticcheck@latest -checks all ./...

FROM scratch
ENTRYPOINT ["/usr/bin/quotes"]
COPY --from=builder /usr/bin/quotes /usr/bin/
