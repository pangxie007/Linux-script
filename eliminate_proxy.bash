#!/bin/bash
echo "膝盖"
echo "输入【1】配置网络代理"
echo "输入【2】删除网络代理"
read a
if [$a == 1];then
 export http_proxy=http://192.168.142.1:7897
 export https_proxy=http://192.168.142.1:7897
 echo "网络代理配置完毕"
elif [$a == 2];then
 unset https_proxy
 unset http_proxy
 echo "网络代理删除完毕"
else
 echo "无效输入"
fi
