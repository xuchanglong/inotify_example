inotify_example
===========================
****
	
|Author|徐昌隆|
|---|---
|E-mail|xclsoftware@163.com


****
### 零、前言
　　基于 linux epoll 和 inotify 实现的 C/S 架构，用于复制指定目录下的被修改的文件到另一个目录。
### 一、使用说明
    cd inotify_example
    ./build.sh   //编译
    ./build.sh install
    ./run.sh
### 二、测试方法
    echo "hello" > ./test/src/test.txt

10s之后 ./test/dist/ 目录下会有相同的文件。
 
（ 完 ）