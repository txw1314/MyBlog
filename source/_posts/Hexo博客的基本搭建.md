---
title: 从零开始部署Hexo博客(一)
date: 2022-04-11 17:55:00
---
# Hexo博客的基本搭建

## 软件环境

需要的软件环境，以我本人的运行环境为例子

### 1. [Git官网](https://git-scm.com/)

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/4.jpg)

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/5.jpg)

### 2. [Node.js v12版本](https://registry.npmmirror.com/binary.html?path=node/latest-v12.x/)

   Node.js建议使用v12版本，使用高版本会出现不影响使用的小bug，如果你并非强迫症，以及你的其他项目要求更高版本，请下载最新版

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/6.jpg)

   如果你的网络无法进行下载，请访问以下链接进行下载

   >[Git-来自上杉九月的网盘分享](https://cloud.sakurasep.club/api/v3/file/source/16/Git-2.35.1.2-64-bit.exe?sign=YRIorNXqrSq89bc4BujGL10Klg4clmkBRKC3efReYpQ%3D%3A0)
   >
   >[Node.js-来自上杉九月的网盘分享](https://cloud.sakurasep.club/api/v3/file/source/17/node-v12.22.10-x64_2.msi?sign=oeBdUBvJMtOa5UYLPHJ2jvfzSW5_GZwRgytdnfxXK1U%3D%3A0)

### 3. 检查安装是否成功

   打开cmd命令行，输入`node -v`后显示下图所示，即为安装成功

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/7.jpg)

   在电脑的任意目录点击右键，能够显示`Git Bash Here`

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/8.jpg)

## 博客本地化部署

### 1. 更改npm为cnpm源

   国内某些网络环境访问npm会出现问题，建议使用taobao镜像源，能有效减少故障的发生

   ```
   npm install -g cnpm --registry=https://registry.npm.taobao.org
   ```

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/1.jpg)

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/2.jpg)

### 2. 安装hexo命令行

   -g是对全局安装hexo命令行

   ```
   cnpm install hexo-cli -g
   ```

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/3.jpg)

### 3. Hexo博客初始化

   选取一个想要安装Hexo的目录，路径中最好不要含有中文，后续会更好处理

   ```
   hexo init
   ```

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/9.jpg)

   此时文件夹内应有初始化文件

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/10.jpg)

### 4. 运行博客

   在博客根目录右键打开`Git Bash Here`

   输入以下指令

   ```
   hexo clean && hexo g && hexo s
   ```

   > hexo clean 清除已经部署的网页静态文件
   >
   > hexo g 编译当前博客
   >
   > hexo s 启动本地服务器

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/11.jpg)

   出现上图最后一句话，并且没有后续的警告语句，说明部署成功，在浏览器中输入以下网址查看部署效果

   ```
   http://localhost:4000
   ```

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/12.jpg)

   >  如果你的端口4000被占用，可以使用hexo s -p 端口号
   >
   >  然后访问`http://localhost:端口号`

   以上，博客的最基本的本地化部署已经完成，接下来将部署到Gitee或者Github

## 博客部署到网络

Hexo博客部署一般部署到Github或者Gitee，对于我个人的使用理解来说，优先推荐使用Github，如果Github不方便使用，再改用Gitee。

Gitee虽然是国内的代码托管平台，访问速度可以保证，但是它的Pages页面需要手动更新，并且不能够绑定自定义的域名。

### 一. 部署到Github(推荐)

[GitHub: Where the world builds software · GitHub](https://github.com/)   

![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/13.jpg)

#### 1. 创建Github仓库

   注册完成Github账号，新建仓库用于保存上传博客代码

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/14.jpg)

> 这里我已经存在该仓库，所以会爆红

   按照图示修改好仓库名后，确保仓库为公开(Public)，其他设置按需更改，创建仓库。

#### 2. 获取与Github的连接

   在任意位置打开`Git Bash Here`，输入以下指令

   ```
   git config --global user.name "你的GitHub用户名"
   git config --global user.email "你的GitHub注册邮箱"
   ssh-keygen -t rsa -C "你的GitHub注册邮箱"
   ```

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/15.jpg)

   输入第三个命令后只需要连续按下三次回车，就会在`C:\Users\用户名\.ssh`中生成密钥文件

   打开`id_rsa.pub`，复制文件内容，添加到

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/17.jpg)


   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/18.jpg)

   然后在`Git Bash`中输入以下命令测试是否连通Github

   ```
   ssh -T git@github.com
   ```

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/19.jpg)

#### 3.  上传博客到Github

   首先在`Git Bash`中输入以下命令安装部署插件

   ```
   cnpm install hexo-deployer-git --save
   ```

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/20.jpg)

   打开根目录下的`_config.yml`文件

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/21.jpg)

   repo 可以复制此处的链接

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/22.jpg)

   填好后在`Git Bash`中输入下列命令部署到Github仓库

   ```
   hexo clean && hexo g && hexo d
   ```

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/23.jpg)

   此时访问`https://Github用户名.github.io`即可访问

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/24.jpg)

#### 4. 绑定自定义域名

你可以自行选择域名提供商，购买完域名后，在域名解析里设置以下解析记录

![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/33.jpg)

>  主机记录：设置为`@`为泛解析，即访问域名为`https://域名`。如果想要设置为二级域名，请将主机记录设置为想要设置的名称，比如主机记录设置为`hexo`，即访问域名为`https://hexo.域名`
>
>  记录类型：设置为CNAME，将域名解析到网址。因为Github建议将自定义域名以CNAME解析到`Github用户名.github.io`

然后在`_config.yml`中设置url为你解析的域名

![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/34.jpg)

最后再`博客根目录/source`下新建CNAME文件

![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/36.jpg)

文件内容为自定义的域名

![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/35.jpg)

### 二. 部署到Gitee(备用方法)

   [Gitee - 基于 Git 的代码托管和研发协作平台](https://gitee.com/)

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/25.jpg)

#### 1.  创建Gitee仓库

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/26.jpg)

#### 2. 获取与Gitee的连接

   在任意位置打开`Git Bash Here`，输入以下指令

   ```
   git config --global user.name "你的Gitee用户名"
   git config --global user.email "你的Gitee注册邮箱"
   ssh-keygen -t rsa -C "你的Gitee注册邮箱"
   ```

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/15.jpg)

   输入第三个命令后只需要连续按下三次回车，就会在`C:\Users\用户名\.ssh`中生成密钥文件

   打开`id_rsa.pub`，复制文件内容，添加到

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/27.jpg)

   然后在`Git Bash`中输入以下命令测试是否连通Gitee

   ```
   ssh -T git@gitee.com
   ```

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/28.jpg)

#### 3.  上传博客到Gitee

   首先在`Git Bash`中输入以下命令安装部署插件

   ```
   cnpm install hexo-deployer-git --save
   ```

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/20.jpg)

   打开根目录下的`_config.yml`文件

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/29.jpg)

   repo 可以复制此处的链接

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/30.jpg)

   填好后在`Git Bash`中输入下列命令部署到Gitee仓库

   ```
   hexo clean && hexo g && hexo d
   ```

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/23.jpg)

   在仓库的`服务-Gitee Pages`进行手动部署

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/31.jpg)

   打开`强制使用Https`，更新部署

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/32.jpg)

   等待部署结束后，访问`Https://Gitee用户名.gitee.io`查看部署结果

   ![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/hexo/24.jpg)

# 后记

本篇文章基本讲述了Hexo博客的基本部署，包括了本地化部署测试和上传到Github或者Gitee代码托管平台，使用托管平台提供的Page服务进行远程访问。

本篇教程属于面向与小白的零基础教程系列，如果在安装过程中出现任何问题，你可以在评论区提问，你的提问也是我充实文章的助力！

---

![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/about_me.png)