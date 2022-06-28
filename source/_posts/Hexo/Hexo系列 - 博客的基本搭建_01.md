---
title: Hexo_01-博客的安装与部署
author: 上杉九月
date: 2022-04-11 17:55:00
updated: 2022-06-25 09:07:41
## 基本设置
tags: 
- Hexo
- 零基础
categories: Hexo系列
excerpt: 本篇文章，将会从Hexo博客的基本搭建，以及如何将你的博客部署到网络进行访问。
## 密码设置
password: 
abstract: 
wrong_pass_message: 密码错误,请重新输入
## 置顶设置
sticky: 10000
top: false
pin: false
## 文章头图设置
index_img: https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Hexo/index_1.jpg
banner_img: https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Hexo/index_1.jpg
headimg: https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Hexo/index_1.jpg
img: https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Hexo/index_1.jpg
cover: https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Hexo/index_1.jpg
## 相关开关
mermaid: false
mathjax: false
math: false
comments: true
hide: false
abbrlink: hexo01
## Aplayer播放器设置
music:
  server: netease
  type: song
  id: 1403774122
## 博客引用了哪些文章
references:
  - title: 'Roderic-搭建hexo博客的具体流程'
    url: 'http://roderic.cn/2017/06/14/%E6%90%AD%E5%BB%BAhexo%E5%8D%9A%E5%AE%A2%E7%9A%84%E5%85%B7%E4%BD%93%E6%B5%81%E7%A8%8B/'
  - title: 'Hexo：将你的博客部署到 Vercel'
    url: 'https://snow.js.org/hexo-vercel/'

---

**本篇文章最后更新于2022.06.25 更改了一些遗留问题，更换了下载链接**

**最近在尝试新的markdown语法格式排版，试试效果如何**

## 一. 软件环境

{% note success::Git %}
{% note success::Node.js %}
{% note success::Clash for Windows(任意加速器，保证能连接到Github) %}

### 1.1 [Git官网](https://git-scm.com/)

我们会将搭建好的Hexo上传到Github，所以需要Git命令行支持。

{% gallery stretch::2 %}
![Git官网页面](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/4.jpg)

![根据系统选择64/32位](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/5.jpg)
{% endgallery %}

### 1.2 [Node.js](https://nodejs.org/en/)

{% gallery %}
![选择下载LTS版本](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Hexo/6_new.jpg)
{% endgallery %}

{% note bug warning::如果你的网络无法进行下载，请访问以下链接进行下载： %}

{% link Git-密码0625-来自上杉九月的网盘分享::https://cloud.sakurasep.club/s/YdiE::https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/touxiang.png %}
{% link Node.js-密码0625-来自上杉九月的网盘分享::https://cloud.sakurasep.club/s/jdHB::https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/touxiang.png %}



### 1.3 检查安装是否成功

打开cmd命令行，输入`node -v`后显示下图所示，即为安装成功

{% gallery %}
![显示版本号](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Hexo/7_new.jpg)
{% endgallery %}

在电脑的任意目录点击右键，能够显示`Git Bash Here`
使用这个功能可以更方便的在当前目录启动命令行，当然你也可以使用cmd的cd命令到当前目录

{% gallery %}
![右键菜单出现选项](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/8.jpg)
{% endgallery %}

## 二. 博客本地化部署

### 2.1 更改npm为cnpm源

国内某些网络环境访问npm会出现问题，建议使用taobao镜像源，能有效减少故障的发生

{% folding green, 切换npm源 %}
```shell
npm install -g cnpm --registry=https://registry.npm.taobao.org
```
{% endfolding %}

{% gallery %}
![cnpm切换过程](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/1.jpg)
{% endgallery %}

使用`cnpm -v`后正常输出版本号，即为安装成功

{% gallery %}
![显示版本号](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/2.jpg)
{% endgallery %}

### 2.2 安装hexo命令行

`-g`是对全局安装hexo命令行

{% folding green, 安装Hexo命令行 %}
```shell
cnpm install hexo-cli -g
```
{% endfolding %}

{% gallery %}
![hexo-cli安装过程](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/3.jpg)
{% endgallery %}

### 2.3 Hexo博客初始化

选取一个想要安装Hexo的目录，路径中最好不要含有中文，后续会更好处理

{% folding green, Hexo初始化命令 %}
```shell
hexo init
```
{% endfolding %}

{% gallery %}
![初始化过程](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Hexo/9_new.jpg)
{% endgallery %}

此时文件夹内应有初始化文件，不过只要接下来能够成功运行，上述过程没有报错，就没问题。

{% gallery %}
![hexo文件夹结构](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Hexo/10_new.jpg)
{% endgallery %}

如果初始化出现问题，即在运行`hexo init`的时候报错(通常是由于网络而出现问题)

{% note bug warning::如果出现网络问题导致无法下载，请访问以下链接获取基础包： %}

{% link Hexo_基础包文件-密码0625-来自上杉九月的网盘分享::https://cloud.sakurasep.club/s/Nouy::https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/touxiang.png %}


### 2.4 运行博客

在博客根目录右键打开`Git Bash Here`

输入以下指令
{% folding green, Hexo初始化命令 %}
```shell
hexo clean && hexo g && hexo s
```
{% endfolding %}

{% note info::hexo clean 清除已经部署的网页静态文件 %}
{% note info::hexo g 编译当前博客 %}
{% note info::hexo s 启动本地服务器 %}

{% gallery %}
![本地部署过程](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/11.jpg)
{% endgallery %}

出现`Hexo is running at http://localhost:4000/ . Press Ctrl+C to stop.`，并且没有后续的警告语句，说明部署成功，在浏览器中输入`localhost:4000`查看部署效果。


{% gallery %}
![运行成功](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/12.jpg)
{% endgallery %}

{% note bug warning::如果你的端口4000被占用，可以使用hexo s -p 端口号。然后访问`http://localhost:端口号` %}

以上，博客的最基本的本地化部署已经完成，接下来的内容是将博客部署到网络进行在线访问。

## 三. 博客部署到网络

基本介绍一下目前不同部署方式的差别。

Github：微软旗下的开源代码托管平台，国内某些运营商可能无法访问，一般来说还是推荐部署在Github Pages，这也是我本人目前主要用的服务。

Gitee：虽然是国内的代码托管平台，访问速度可以保证，但是它的Pages页面需要手动更新，并且不能够绑定自定义的域名(如果你想和别的博主交换友链，最好还是要有一个域名。因为一般有域名的博客更有动力维护下去)。

Coding：部署方式很复杂，新版的Coding Pages貌似是和腾讯云挂钩，按量付费，感觉没必要了。

Vercel：是一个静态网页部署平台，好像访问速度要比Github稍微快一些，并且提供修改自定义域名。

云服务器：访问速度很大程度上取决于你的服务器的带宽，而且现在服务器的价格也不便宜，以后部署其他需要服务器的项目时再使用比较好。

### 3.1 [部署到Github(推荐)](https://github.com/)

{% gallery %}
![全球最大同性社交平台](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/13.jpg)
{% endgallery %}

#### 3.1.1 创建Github仓库

注册完成Github账号，新建仓库用于保存上传博客代码。

{% note bug warning::Github账号注册时尽量不要使用国内邮箱，尤其是QQ邮箱 %}

{% gallery %}
![新建仓库](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/14.jpg)
{% endgallery %}

{% note bug warning::这里我已经存在该仓库，所以会爆红 %}
{% note quote::Tips:试试新建一个仓库名为你Github用户名的仓库 %}

按照图示修改好仓库名后，确保仓库为公开(Public)，其他设置按需更改，创建仓库。

#### 3.1.2 获取与Github的连接

在任意位置打开`Git Bash Here`，输入以下指令
{% folding green, 建立与Github的连接 %}
```shell
git config --global user.name "你的GitHub用户名"
git config --global user.email "你的GitHub注册邮箱"
ssh-keygen -t rsa -C "你的GitHub注册邮箱"
```
{% endfolding %}

{% gallery %}
![生成密钥](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/15.jpg)
{% endgallery %}

输入第三个命令后只需要连续按下三次回车，就会在`C:\Users\用户名\.ssh`中生成密钥文件

打开`id_rsa.pub`，复制文件内容，添加到

{% gallery stretch::2 %}
![添加SSH公钥](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/17.jpg)

![添加SSH公钥](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/18.jpg)
{% endgallery %}

然后在`Git Bash`中输入以下命令测试是否连通Github
{% folding green, 测试与Github的连接 %}
```shell
ssh -T git@github.com
```
{% endfolding %}

{% gallery %}
![成功连通](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/19.jpg)
{% endgallery %}

#### 3.1.3 上传博客到Github

首先在`Git Bash`中输入以下命令安装部署插件
{% folding green, 安装hexo-deployer-git %}
```shell
cnpm install hexo-deployer-git --save
```
{% endfolding %}

{% gallery %}
![安装成功](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/20.jpg)
{% endgallery %}

打开根目录下的`_config.yml`文件

{% gallery %}
![deploy配置](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/21.jpg)
{% endgallery %}

{% folding green, config文件配置 %}
```yaml
# Deployment
## Docs: https://hexo.io/docs/one-command-deployment
deploy:
  type: git
  repo: 填入仓库连接
  branch: master
```
{% endfolding %}

repo 可以复制此处的链接

{% gallery %}
![复制仓库链接](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/22.jpg)
{% endgallery %}

填好后在`Git Bash`中输入下列命令部署到Github仓库
{% folding green, 部署到Github %}
```shell
hexo clean && hexo g && hexo d
```
{% endfolding %}

{% gallery %}
![Github同理(此为部署到Gitee)](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/23.jpg)
{% endgallery %}

此时访问`https://Github用户名.github.io`即可访问

{% gallery %}
![Github显示效果相同](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/24.jpg)
{% endgallery %}

#### 3.1.4 绑定自定义域名

你可以自行选择域名提供商，购买完域名后，在域名解析里设置以下解析记录

{% gallery %}
![标准解析设置](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/33.jpg)
{% endgallery %}

{% noteblock info::解析记录简介 %}
* 主机记录：设置为`@`为泛解析，即访问域名为`https://域名`。如果想要设置为二级域名，请将主机记录设置为想要设置的名称，比如主机记录设置为`hexo`，即访问域名为`https://hexo.域名`

* 记录类型：设置为CNAME，将域名解析到网址。因为Github建议将自定义域名以CNAME解析到`Github用户名.github.io`
{% endnoteblock %}


然后在`_config.yml`中设置url为你解析的域名

{% gallery %}
![url设置](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/34.jpg)
{% endgallery %}

最后再`博客根目录/source`下新建CNAME文件

{% gallery %}
![注意，没有拓展名!](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/36.jpg)
{% endgallery %}

文件内容为自定义的域名

{% gallery %}
![用于Github识别项目的自定义地址](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/35.jpg)
{% endgallery %}

### 3.2 [部署到Gitee(备用方法)](https://gitee.com/)

{% gallery %}
![Gitee官网](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/25.jpg)
{% endgallery %}

#### 3.2.1  创建Gitee仓库

部署到Gitee与部署到Github的流程相差很小，看一个就行。

{% gallery %}
![新建Gitee仓库](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/26.jpg)
{% endgallery %}

#### 3.2.2 获取与Gitee的连接

在任意位置打开`Git Bash Here`，输入以下指令
{% folding green, 连接到Gitee %}
```shell
git config --global user.name "你的Gitee用户名"
git config --global user.email "你的Gitee注册邮箱"
ssh-keygen -t rsa -C "你的Gitee注册邮箱"
```
{% endfolding %}

{% gallery %}
![获取SSH公钥](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/15.jpg)
{% endgallery %}

输入第三个命令后只需要连续按下三次回车，就会在`C:\Users\用户名\.ssh`中生成密钥文件

打开`id_rsa.pub`，复制文件内容，添加到

{% gallery %}
![添加SSH公钥](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/27.jpg)
{% endgallery %}

然后在`Git Bash`中输入以下命令测试是否连通Gitee
{% folding green, 测试连接 %}
```shell
ssh -T git@gitee.com
```
{% endfolding %}

{% gallery %}
![连接成功](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/28.jpg)
{% endgallery %}

#### 3.2.3  上传博客到Gitee

首先在`Git Bash`中输入以下命令安装部署插件
{% folding green, 安装hexo-deployer-git %}
```shell
cnpm install hexo-deployer-git --save
```
{% endfolding %}

{% gallery %}
![安装过程](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/20.jpg)
{% endgallery %}

打开根目录下的`_config.yml`文件

{% gallery %}
![Gitee配置](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/29.jpg)
{% endgallery %}

{% folding green, config文件配置 %}
```yaml
# Deployment
## Docs: https://hexo.io/docs/one-command-deployment
deploy:
  type: git
  repo: 填入仓库连接
  branch: master
```

{% endfolding %}

repo 可以复制此处的链接

{% gallery %}
![复制仓库链接](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/30.jpg)
{% endgallery %}

填好后在`Git Bash`中输入下列命令部署到Gitee仓库

{% folding green, 部署到Gitee %}
```shell
hexo clean && hexo g && hexo d
```
{% endfolding %}

{% gallery %}
![上传成功](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/23.jpg)
{% endgallery %}

在仓库的`服务-Gitee Pages`进行手动部署
{% note bug warning::Github Pages会自动使用你仓库的代码进行部署，而Gitee需要你手动更新。 %}

{% gallery %}
![手动更新Pages](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/31.jpg)
{% endgallery %}

打开`强制使用Https`，更新部署

{% gallery %}
![更新](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/32.jpg)
{% endgallery %}

等待部署结束后，访问`Https://Gitee用户名.gitee.io`查看部署结果

{% gallery %}
![部署完成](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/24.jpg)
{% endgallery %}


### 3.3 [部署到Vercel](https://vercel.com/)

请在看过3.1部署到Github后再观看本部分教程。

{% gallery %}
![官网](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Hexo/37.jpg)
{% endgallery %}

#### 3.3.1 连接Github仓库

{% gallery %}
![连接仓库](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Hexo/38.jpg)
{% endgallery %}

{% note bug warning::项目名只能使用小写英文，无法使用大写英文，会报错 %}
{% gallery %}
![基本设置](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Hexo/39.jpg)
{% endgallery %}

稍等一段时间后，Vercel便部署完成了你的博客
{% gallery %}
![部署完成](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Hexo/40.jpg)
{% endgallery %}

Vercel默认提供了域名，你也可以更改。
到`Settings-Domains`中进行更改
{% gallery %}
![更改域名](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Hexo/41.jpg)
{% endgallery %}

## 写在最后

本篇文章基本讲述了Hexo博客的基本部署，包括了本地化部署测试和上传到Github，Gitee或是Vercel等平台，使用托管平台提供的Page服务进行远程访问。

本篇教程属于面向与小白的零基础教程系列，如果在安装过程中出现任何问题，你可以在评论区提问，你的提问也是我充实文章的助力！

---

{% gallery %}
![关注上杉九月，关注上杉九月谢谢喵！](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/about_me.png)
{% endgallery %}