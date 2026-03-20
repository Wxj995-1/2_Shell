#! /bin/bash
# 全局变量在当前Shell环境与子Shell环境中可用, 父Shell环境中不可用
VAR4=itheima
export VAR4
#echo "demo2.sh输出的变量 ${VAR4}"
sh demo3.sh