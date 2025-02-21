BINARY_NAME = app

PKG = ./...

BUILD_DIR = bin

all: build

build:
	go build -o $(BUILD_DIR)/$(BINARY_NAME) cmd/main.go

run: build
	./$(BUILD_DIR)/$(BINARY_NAME)

clean:
	rm -rf $(BUILD_DIR)

test:
	go test -v $(PKG)

fmt:
	go fmt $(PKG)

lint:
	golangci-lint run

deps:
	go mod tidy
