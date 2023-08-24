一个基于filecoin lotus优化的一个远程c2的实现，仅需要改动一小部分代码，就能实现c2远端执行。

## 合并lotus-remotec2到自己的优化版本

默认master分支是dev分支，是编写说明文档的分之，建议使用发行版本对应的分支。

仅需要合并名为"_**实现remotec2,需要合并的代码**_"的提交

基于lotus：v1.23.0 版本改动

## 接入使用
```shell
export C2_REMOTE_TOKEN=您的对应矿工的token
export C2_ADVERTISE_ADDRESS=您的C2网关ip:port