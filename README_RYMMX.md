打开你的终端并执行

$ go env -w GO111MODULE=on
$ go env -w GOPROXY=https://goproxy.cn,direct
完成。

macOS 或 Linux

打开你的终端并执行

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


欢迎访问阿里云Go Module代理仓库服务


简介
go module公共代理仓库，代理并缓存go模块。你可以利用该代理来避免DNS污染导致的模块拉取缓慢或失败的问题，加速你的构建


地址
https://mirrors.aliyun.com/goproxy/


使用帮助
1.使用go1.11以上版本并开启go module机制

2.导出GOPROXY环境变量

export GOPROXY=https://mirrors.aliyun.com/goproxy/


如何自动下载所有依赖包？
大部分情况下大家下载 Go 项目都是使用go get命令，它除了会下载指定的项目代码，还会去下载这个项目所依赖的所有项目。

但是有的时候我们的项目由于各种原因并不是通过go get下载的，是通过git clone下载的，这样代码下下来就没有依赖包了，没办法编译通过的。这样的话怎么办呢？

go get -d -v ./...
-d标志只下载代码包，不执行安装命令；
-v打印详细日志和调试日志。这里加上这个标志会把每个下载的包都打印出来；
./...这个表示路径，代表当前目录下所有的文件。

