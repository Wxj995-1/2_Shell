#! /bin/bash

#字符串截取
: <<'comment'
var1="welcome to itheima"
echo ${var1:0:2}

echo ${var1:11}

echo ${var1:0-5:2}

echo ${var1#*to}

echo ${var1##*i}

echo ${var1%to*}

echo ${var1%%o*}
comment

 : <<'comment'
item=${nums[5]}
echo $item
echo ${nums[@]}
echo ${nums[*]}
echo ${#nums[*]}
comment

: << 'comment'
nums1=(10 11 12 13 14 15)
nums2=(10 11 12 13 14 15 "www.baidu.com")
arr3=(${nums1[*]} ${nums2[*]})
echo ${arr3[@]}
echo -e "hello \nworld"
comment


: << 'comment'
read 是 Shell 内置命令，用于从标准输入中读取数据并赋值给变量。如果没有进行重定向
默认就是从终端控制台读取用户输入的数据；如果进行了重定向，那么可以从文件中读取数据。
read
echo ${REPLY}

============================================================================
read -p "请输入姓名,年龄,爱好: " name age hobby
echo "姓名：$name"
echo "年龄：$age"
echo "爱好：$hobby"
============================================================================


============================================================================
read -n 1 -p '确定删除输入吗: ' char
printf '\n'
echo '您的结果:'$char
============================================================================



============================================================================
read -t 20 -sp '请输入密码(20秒内):' pwd1
printf '\n'
read -t 20 -sp '请再次输入密码(20秒内):' pwd2
printf '\n'
if
        [ $pwd1 == $pwd2 ]
then
        echo '密码与确认密码一致, 验证通过'
else
        echo '密码与确认密码不一致,验证失败'
fi
============================================================================
comment







































































