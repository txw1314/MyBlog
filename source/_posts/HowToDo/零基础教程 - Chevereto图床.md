---
title: Chevereto-属于你自己的图片站
date: 2020-12-25 20:20:23
updated: 2022-06-28
author: 上杉九月
## 基本设置
tags:
  - 云服务器
  - 图床
  - 零基础
categories: 零基础教程
excerpt: Chevereto算是一个集图床功能与图片展示为一体的项目，同时还提供了注册功能，如果你的服务器带宽允许，你可以邀请小伙伴为你的图片站扩充资源！
## 密码设置
password: 
abstract: 
wrong_pass_message: '密码错误,请重新输入'
## 文章置顶
top: false
pin: false
sticky: 10000
## 文章头图设置
index_img: 'https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/index.jpg'
banner_img: 'https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/index.jpg'
headimg: 'https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/index.jpg'
cover: 'https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/index.jpg'
## Aplayer播放器设置
music:
  server: netease
  type: song
  id: 1365933510
## 相关开关
mermaid: false
mathjax: true
math: false
comments: true
hide: false
abbrlink: chevereto
---

## 前言

前几天用hexo搭建博客首页的时候，想给网站来一张高清的壁纸。然后用picgo把一张比较大的图片上传到gitee。

{% gallery %}
![Picgo](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/1.png)
{% endgallery %}

这时出现了第一个问题，picgo不显示该图片的缩略图

{% gallery %}
![无法显示缩略图](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/2.png)
{% endgallery %}

本来以为是picgo的bug（beta3版本），便用手机上的图床软件上传

{% gallery %}
![上传完成](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/3.png)
{% endgallery %}

显示上传成功，打开gitee的仓库也可以正常访问

在感到很疑惑的同时，我将该图片的URL发到了群里，让朋友看看能不能访问

然后我收到了朋友的截图

{% gallery %}
![Gitee限制图片大小](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/4.png)
{% endgallery %}

{% noteblock warning:: Gitee图床存在的问题 %}
1. 不能上传超过1M大小的图片，否则不能显示
2. Gitee有段时间开启了防盗链，第三方引用全部失效
{% endnoteblock %}

这时候我在图床APP的其他图床中看到了一段对于chevereto图床的描述

{% gallery %}
![试试？](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/5.png)
{% endgallery %}

粗略的看了一下教程，实现效果还不错。

{% note green link :: [上杉九月的图片站-Chevereto](https://pic.sakurasep.top/) %}


## 一. 方案总结

{% noteblock info %}
* 方案一：神枫云 + FTP外部存储
* 方案二：域名 + 轻量应用服务器
* 方案三：备案域名 + ECS服务器
{% endnoteblock %}

我个人最推荐方案二

学生优惠或者新用户购买腾讯云或者阿里云的服务器挺便宜的，大概是一年60左右。

{% gallery %}
![腾讯云](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/6.png)
{% endgallery %}

当然我之前介绍的神枫云也可以，而且可以省去配置宝塔面板的步骤

## 二. 方案实施

### 2.1 方案一：神枫云 + FTP外部存储

{% note green link ::[神枫云首页](https://www.sfxyun.cn/) %}

#### 2.1.1 神枫云服务器配置

建议购买这个3RMB/月的服务器

相比于1RMB/月的，月流量变为无限是很重要的

{% gallery %}
![服务器](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/7.png)
{% endgallery %}

稍微配置一下，进入主机的管理界面，进入在线文件管理

{% gallery %}
![管理面板](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/8.png)
{% endgallery %}

#### 2.1.2 安装前的准备

上传chevereto底包到根目录

{% gallery %}
![chevereto](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/9.png)
{% endgallery %}

这里chevereto有免费版和付费版，我们使用付费版来进行搭建，因为付费版才可以使用外部存储，神枫云只提供了300M的数据库，存不了几张图片

{% note paperclip blue:: [chevereto免费版-Cloudreve-密码0628](https://cloud.sakurasep.club/s/8YCM) %}
{% note paperclip blue:: [chevereto收费版-Cloudreve-密码0628](https://cloud.sakurasep.club/s/GJU0) %}

然后解压底包到wwwroot文件夹

此时wwwroot文件夹内应该是下图所示的目录结构

{% gallery %}
![目录结构](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/16.png)
{% endgallery %}

解压完成之后，进入域名绑定选项，这里有一个赠送的域名

{% gallery %}
![默认域名](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/13.png)
{% endgallery %}


#### 2.1.3 开始安装
访问该域名进入安装进程，只修改三项

如果忘记了可以在面板首页-虚拟主机信息找到

{% gallery %}
![连接数据库](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/14.png)
{% endgallery %}

然后是注册管理员的界面

{% gallery %}
![填写信息](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/25.png)
{% endgallery %}

顺利安装完成

{% gallery %}
![安装完成](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/26.png)
{% endgallery %}

如果一切顺利的话现在网站已经跳转到了chevereto图床的首页

{% gallery %}
![首页展示](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/17.png)
{% endgallery %}

点击右上角的登录，把刚刚注册的管理员账号输入进去，然后进入仪表盘，到这里整个安装过程基本结束了。

不过因为神枫云的数据库空间很小，只有300M，根本存不了几张图片，所以下文的外部存储功能便十分重要。

### 2.2 域名 + 腾讯云轻量服务器

#### 2.2.1 安装宝塔镜像
首先去腾讯云购买一个轻量应用服务器，并且选择香港地区来免去备案，镜像选择宝塔面板

{% gallery %}
![选择宝塔镜像](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/10.png)
{% endgallery %}

然后来到服务器的控制台，在防火墙里添加8888端口来允许宝塔面板的访问，后续可以更改默认访问端口，并添加安全入口提高安全性。

{% gallery %}
![放行端口](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/11.png)
{% endgallery %}

在应用管理里面可以获取默认宝塔面板的登录密码

{% gallery %}
![访问密码](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/12.png)
{% endgallery %}

后期记得修改宝塔面板的登录端口以及默认用户名和密码

登录实例，可以选择网页直接登录，上图右下角，先复制命令，然后点击登录

{% gallery %}
![远程登录](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/17.png)
{% endgallery %}

#### 2.2.2 软件环境
进入宝塔面板，在软件商店里安装（仅搭建图床）

{% note success::Nginx 1.16 %}
{% note success::php 7.3 %}
{% note success::MySQL 5.6 %}
{% note success::phpMyadmin 4.9 %}

{% gallery %}
![软件列表](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/27.jpg)
{% endgallery %}

#### 2.2.3 创建站点
然后在侧边栏找到网站，添加站点

填入你购买的域名，创建数据库

{% gallery %}
![基本信息](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/19.png)
{% endgallery  %}

然后在站点的设置里添加伪静态代码

{% folding green, 伪静态代码 %}
```
location / {
    index index.php;
    try_files $uri $uri/ /index.php?$query_string;
}
```
{% endfolding %}

{% gallery  %}
![伪静态](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/20.png)
{% endgallery  %}

#### 2.2.4 DNS解析
然后在你申请域名的服务商添加DNS解析

{% gallery  %}
![DNS解析](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/21.png)
{% endgallery  %}

{% note info:: 主机记录@ 记录类型A 解析线路默认 记录值是IP地址 TTL 10分钟 %}

稍微等上一段时间，就可以用域名访问你的chevereto图床进行安装了

#### 2.2.5 安装过程
访问该域名进入安装进程

{% gallery %}
![连接数据库](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/14.png)
{% endgallery %}

然后是注册管理员的界面

{% gallery %}
![填写信息](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/25.png)
{% endgallery %}

顺利安装完成

{% gallery %}
![安装完成](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/26.png)
{% endgallery %}

如果一切顺利的话现在网站已经跳转到了chevereto图床的首页

{% gallery %}
![首页展示](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/17.png)
{% endgallery %}

点击右上角的登录，把刚刚注册的管理员账号输入进去，然后进入仪表盘，到这里整个安装过程基本结束了。

如果你使用的是这种方式，那么一般来说数据库就有了一定的存储空间，例如我个人使用的就有约45G的数据空间

{% gallery %}
![存储空间](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/22.png)
{% endgallery %}

这样的话存一些个人的图片还是没有问题的

### 2.3 备案域名 + 阿里云ECS服务器

这里ECS服务器我购买的是学生优惠版本

这里虽然显示最少购买6个月，其实可以在调整配置的时候可以买一个月先试试

{% gallery %}
![价格](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/33.jpg)
{% endgallery %}

这里仅需要修改购买时长，操作系统等会去更换

{% gallery %}
![购买界面](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/34.jpg)
{% endgallery %}

购买完成后去阿里云ECS控制台，将实例停止运行以更换操作系统和购买云盘容量

注意：云盘容量按需购买，因为服务器的云盘是按月付费

#### 2.3.1 更换镜像
在镜像市场将操作系统更换为宝塔linux面板

{% gallery %}
![更换镜像](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/35.jpg)
{% endgallery %}

自定义实例登录密码，一会要用到

{% gallery %}
![修改登录密码](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/36.jpg)
{% endgallery %}


#### 2.3.2 登录服务器
在实例管理界面，进行远程登录

{% gallery %}
![远程登录](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/37.jpg)
{% endgallery %}

选择第一项网页登录

{% gallery %}
![远程登录](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/38.jpg)
{% endgallery %}

输入"bt default"来获取宝塔面板的默认登录密码

{% gallery %}
![获取默认密码](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/40.jpg)
{% endgallery %}

记得放行安全组端口8888，然后用`公网IP:8888`访问宝塔面板

#### 2.3.3 软件环境
进入宝塔面板，在软件商店里安装（仅搭建图床）

{% note success::Nginx 1.16 %}
{% note success::php 7.3 %}
{% note success::MySQL 5.6 %}
{% note success::phpMyadmin 4.9 %}

{% gallery %}
![软件列表](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/27.jpg)
{% endgallery %}

#### 2.3.4 创建站点
然后在侧边栏找到网站，添加站点

填入你购买的域名，创建数据库

{% gallery %}
![基本信息](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/19.png)
{% endgallery %}

然后在站点的设置里添加伪静态代码

{% folding green, 伪静态代码 %}
```
location / {
    index index.php;
    try_files $uri $uri/ /index.php?$query_string;
}
```
{% endfolding %}

{% gallery %}
![伪静态](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/20.png)
{% endgallery %}

#### 2.3.5 DNS解析
然后在你申请域名的服务商添加DNS解析

{% gallery %}
![DNS解析](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/21.png)
{% endgallery %}

{% note info:: 主机记录@ 记录类型A 解析线路默认 记录值是IP地址 TTL 10分钟 %}

稍微等上一段时间，就可以用域名访问你的chevereto图床进行安装了

#### 2.3.6 安装过程
访问该域名进入安装进程

{% gallery %}
![连接数据库](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/14.png)
{% endgallery %}

然后是注册管理员的界面

{% gallery %}
![填写信息](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/25.png)
{% endgallery %}

顺利安装完成

{% gallery %}
![安装完成](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/26.png)
{% endgallery %}

如果一切顺利的话现在网站已经跳转到了chevereto图床的首页

{% gallery %}
![首页展示](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/17.png)
{% endgallery %}

点击右上角的登录，把刚刚注册的管理员账号输入进去，然后进入仪表盘，到这里整个安装过程基本结束了。

## 三. 为域名添加Https访问

打开你所购买域名服务商的控制台（这里以阿里云为例子）

在域名控制台-基本信息-SSL证书

用免费版就可以

填写一些必要的信息，审核通过后下载证书

{% gallery %}
![获取证书](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/41.jpg)
{% endgallery %}

这里因为我们云服务器安装的是Nginx，所以下载该类型

{% gallery %}
![下载证书](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/42.jpg)
{% endgallery %}

然后解压缩得到两个文件，一个key，一个pem，现在登录宝塔面板，复制证书密钥和内容到网站-设置-SSL-其他证书

{% gallery %}
![设置证书](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Chevereto/43.jpg)
{% endgallery %}

保存后你的域名就可以使用https访问了


## 四. chevereto图床基本设置

### 4.1 网站

{% noteblock info::推荐修改 %}
* 网站名称
* 网站标题
* 网站描述
* 默认时区
* 网站运营模式
* 网站隐私模式
{% endnoteblock %}
### 4.2 用户

{% noteblock info::推荐修改 %}
* 开放注册
{% endnoteblock %}

### 4.3 图片上传

{% noteblock info::推荐修改 %}
* 最大文件大小
* 缩略图大小
* 中等图片大小
* 水印
{% endnoteblock %}

### 4.4 主页

{% noteblock info::推荐修改 %}
* 样式
* 封面图片
* 标题
* 段落
{% endnoteblock %}

### 4.5 电子邮件

{% noteblock info::推荐修改 %}
* 发送名称
* 发件人的电子邮件地址
* 电子邮件地址
{% endnoteblock %}

### 4.6 防洪保护

{% noteblock info::推荐修改 %}
* 防洪保护
* 以电子邮件通知
* 每分钟限额
* 每小时限额
* 每日限额
{% endnoteblock %}

## 五. 总结

chevereto图床作为一个图片站来说还是很不错的，用来存放一些高清图片（壁纸，美图）等还是很不错的。不过搭建chevereto是需要一定的成本的，如果预算不是很多建议去找一些其他的公益图床。

~~如果平时只是写写文章的话，我还是推荐使用gitee图床，上传之前记得用格式工厂压缩一下图片，压缩成JPG格式，可以极大程度避免图片过大的问题~~

Gitee图床审查变得严格起来，出现了很多误封现象，这里建议使用`Github仓库 + jsDelivr`。

---

{% gallery %}
![关注上杉九月，关注上杉九月谢谢喵！](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/about_me.png)
{% endgallery %}