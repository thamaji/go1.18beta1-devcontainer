#!/bin/bash

# gopls
# https://github.com/golang/tools/blob/master/gopls/doc/advanced.md#working-with-generic-code
cd $(mktemp -d)
go mod init gopls-unstable
go get golang.org/x/tools/gopls@master golang.org/x/tools@master
go install golang.org/x/tools/gopls
