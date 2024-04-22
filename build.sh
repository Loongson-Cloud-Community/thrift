## 设置龙芯rust源和rustup源
curl --proto '=https' --tlsv1.2 -sSf https://rust-lang.loongnix.cn/rustup-init.sh
[root@kubernetes-master-1 thrift]# cat ~/.cargo/config

[source.crates-io]
replace-with = 'loongnix'

[source.loongnix]
registry = "https://crates.loongnix.cn/crates.io-index"

rm lib/rs/Cargo.lock

## 编译
## boost 安装在/usr/include/boost 路径下
yum install -y boost-devel  libtool gcc gcc-c++ make openssl-libs openssl-devel rustfmt clippy rust-toolset flex
./bootstrap.sh  ##生成configure文件
./configure  --with-swift=no  --prefix=/usr/local/zxj  ## --prefix：设置安装路径， --enable-tests=no：不使能测试
make
