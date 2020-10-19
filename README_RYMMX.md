$ go env -w GO111MODULE=on
$ go env -w GOPROXY=https://goproxy.cn,direct

$ export GO111MODULE=on
$ export GOPROXY=https://goproxy.cn
或者

$ echo "export GO111MODULE=on" >> ~/.profile
$ echo "export GOPROXY=https://goproxy.cn" >> ~/.profile
$ source ~/.profile
完成。


go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.io,direct

# 设置不走 proxy 的私有仓库，多个用逗号相隔（可选）
go env -w GOPRIVATE=*.corp.example.com

# 设置不走 proxy 的私有组织（可选）
go env -w GOPRIVATE=example.com/org_name


地址
https://mirrors.aliyun.com/goproxy/

export GOPROXY=https://mirrors.aliyun.com/goproxy/


如何自动下载所有依赖包？
大部分情况下大家下载 Go 项目都是使用go get命令，它除了会下载指定的项目代码，还会去下载这个项目所依赖的所有项目。

但是有的时候我们的项目由于各种原因并不是通过go get下载的，是通过git clone下载的，这样代码下下来就没有依赖包了，没办法编译通过的。这样的话怎么办呢？

go get -d -v ./...
-d标志只下载代码包，不执行安装命令；
-v打印详细日志和调试日志。这里加上这个标志会把每个下载的包都打印出来；
./...这个表示路径，代表当前目录下所有的文件。



[root@localhost go-mysql-transfer]# go env
GO111MODULE="on"
GOARCH="amd64"
GOBIN=""
GOCACHE="/root/.cache/go-build"
GOENV="/root/.config/go/env"
GOEXE=""
GOFLAGS=""
GOHOSTARCH="amd64"
GOHOSTOS="linux"
GOINSECURE=""
GOMODCACHE="/root/src/golang_working_dir/pkg/mod"
GONOPROXY=""
GONOSUMDB=""
GOOS="linux"
GOPATH="/root/src/golang_working_dir"
GOPRIVATE=""
GOPROXY="https://goproxy.cn,direct"
GOROOT="/root/src/golang_working_dir/sdk/go"
GOSUMDB="sum.golang.org"
GOTMPDIR=""
GOTOOLDIR="/root/src/golang_working_dir/sdk/go/pkg/tool/linux_amd64"
GCCGO="gccgo"
AR="ar"
CC="gcc"
CXX="g++"
CGO_ENABLED="1"
GOMOD="/root/src/golang_working_dir/go-mysql-transfer/go.mod"
CGO_CFLAGS="-g -O2"
CGO_CPPFLAGS=""
CGO_CXXFLAGS="-g -O2"
CGO_FFLAGS="-g -O2"
CGO_LDFLAGS="-g -O2"
PKG_CONFIG="pkg-config"
GOGCCFLAGS="-fPIC -m64 -pthread -fmessage-length=0 -fdebug-prefix-map=/tmp/go-build624574408=/tmp/go-build -gno-record-gcc-switches"



[root@localhost src]# tree -L 3 ./golang_working_dir
./golang_working_dir
├── go-mysql-transfer
│   ├── app.yml
│   ├── app.yml.bak
│   ├── global
│   │   ├── config.go
│   │   ├── debug.go
│   │   ├── metrics.go
│   │   ├── model.go
│   │   ├── rate_counter.go
│   │   └── rule.go
│   ├── go.mod
│   ├── go.sum
│   ├── LICENSE
│   ├── logs
│   │   ├── db
│   │   └── log
│   ├── main.go
│   ├── README.md
│   ├── README_RYMMX.md
│   ├── service
│   │   ├── application_service.go
│   │   ├── cluster
│   │   ├── cluster_service.go
│   │   ├── endpoint
│   │   ├── handler.go
│   │   ├── luaengine
│   │   ├── stock_service.go
│   │   └── transfer_service.go
│   ├── start_service.sh
│   ├── storage
│   │   ├── bolt_position_storage.go
│   │   ├── bolt_row_storage.go
│   │   ├── election_storage.go
│   │   ├── etcd_position_storage.go
│   │   ├── position_storage.go
│   │   ├── storage.go
│   │   └── zk_position_storage.go
│   └── util
│       ├── byteutil
│       ├── dateutil
│       ├── etcdutil
│       ├── fileutil
│       ├── logutil
│       ├── netutil
│       ├── stringutil
│       └── zkutil
├── pkg
│   ├── mod
│   │   ├── cache
│   │   ├── github.com
│   │   ├── go.etcd.io
│   │   ├── golang.org
│   │   ├── go.mongodb.org
│   │   ├── google.golang.org
│   │   ├── gopkg.in
│   │   ├── go.uber.org
│   │   └── stathat.com
│   └── sumdb
│       └── sum.golang.org
├── sdk
│   └── go
│       ├── api
│       ├── AUTHORS
│       ├── bin
│       ├── CONTRIBUTING.md
│       ├── CONTRIBUTORS
│       ├── doc
│       ├── favicon.ico
│       ├── lib
│       ├── LICENSE
│       ├── misc
│       ├── PATENTS
│       ├── pkg
│       ├── README.md
│       ├── robots.txt
│       ├── SECURITY.md
│       ├── src
│       ├── test
│       └── VERSION
└── src
    ├── go-mysql-transfer
    │   ├── app.yml
    │   ├── global
    │   ├── go.mod
    │   ├── goproxy.go
    │   ├── go.sum
    │   ├── LICENSE
    │   ├── main.go
    │   ├── README.md
    │   ├── README_RYMMX.md
    │   ├── service
    │   ├── start_service.sh
    │   ├── storage
    │   └── util
    └── go-mysql-transfer-1.0.1
        ├── app.yml
        ├── global
        ├── go.mod
        ├── go.sum
        ├── LICENSE
        ├── main.go
        ├── README.md
        ├── service
        ├── start_service.sh
        ├── storage
        └── util

53 directories, 53 files

