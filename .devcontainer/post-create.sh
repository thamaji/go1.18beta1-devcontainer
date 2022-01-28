#!/bin/bash

# go1.18beta1
go install golang.org/dl/go1.18beta1@latest
go1.18beta1 download
echo 'alias go=go1.18beta1' >> /home/vscode/.bashrc

# gopls
# https://github.com/golang/tools/blob/master/gopls/doc/advanced.md#working-with-generic-code
cd $(mktemp -d)
go1.18beta1 mod init gopls-unstable
go1.18beta1 get golang.org/x/tools/gopls@master golang.org/x/tools@master
go1.18beta1 install golang.org/x/tools/gopls
