#!/bin/bash

# 全量同步到redis,的怎
go run /root/src/golang_working_dir/src/go-mysql-transfer-1.0.1/main.go -stock

# 量同步到redis,服务的形式开启
go run /root/src/golang_working_dir/src/go-mysql-transfer-1.0.1/main.go