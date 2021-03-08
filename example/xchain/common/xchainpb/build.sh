#!/bin/bash

# install protoc 3.7.1
# export GO111MODULES=on
# go install github.com/golang/protobuf/protoc-gen-go
# go install github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway

protoc -I ./ -I ../../../../../ --go_opt=paths=source_relative --go_out=plugins=grpc:./ ./xchain.proto
