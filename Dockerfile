FROM golang:1.24-alpine AS builder
WORKDIR /build
COPY go.mod go.sum hello.go ./
RUN go mod download
COPY . .
RUN go build -trimpath -ldflags="-s -w" -o hello hello.go
FROM scratch
WORKDIR /app
COPY --from=builder /build/hello /app/hello
CMD ["/app/hello"]
