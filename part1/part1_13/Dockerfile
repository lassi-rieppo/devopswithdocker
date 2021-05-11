FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

# Copy all of the content from the project to the image
COPY . /usr/src/app

# Build
RUN go build

# Do tests
RUN go test ./...

# Environment variable
ENV PORT=8080

# And finally the command to run the application
CMD ["./server"]
