.PHONY: all test get_deps

all: test install

install: get_deps
	go install github.com/intfoundation/go-wire/cmd/...

test:
	go test --race github.com/intfoundation/go-wire/...

get_deps:
	go get -d github.com/intfoundation/go-wire/...

pigeon:
	pigeon -o expr/expr.go expr/expr.peg
