---
title: 使用Cmd批处理命令同步主站更新
date: 2021-05-14 07:53:42

author: 上杉九月
tags:
  - Hexo
  - Cmd
  - 零基础
categories: Hexo系列教程
excerpt: Cmd可以简化博文部署的操作，这使得分站在数量较多时，内容仍然可以同步主站更新。
wrong_pass_message: '密码错误,请重新输入'
sticky: true
top: true
pin: true
mermaid: false
math: false
comments: true
hide: true
music:
  server: netease
  type: song
  id: 31134461
index_img: 'https://cdn.jsdelivr.net/gh/sakurasep/images_01@1.3/Cmd/headimg.jpg'
banner_img: 'https://cdn.jsdelivr.net/gh/sakurasep/images_01@1.3/Cmd/headimg.jpg'
headimg: 'https://cdn.jsdelivr.net/gh/sakurasep/images_01@1.3/Cmd/headimg.jpg'
img: 'https://cdn.jsdelivr.net/gh/sakurasep/images_01@1.3/Cmd/headimg.jpg'
cover: 'https://cdn.jsdelivr.net/gh/sakurasep/images_01@1.3/Cmd/headimg.jpg'
abbrlink: 39030
password:
abstract:
---

# 文章简介

> 作者：上杉九月
> 排版与发布：上杉九月

# 前言
Hexo博客框架是静态部署的，它通过将文件编译到`public`文件夹，使用Git推送到远程仓库，实现博客网站显示。

同时，我们依据这一原理，在`主域名`下开设分站，将以往所配置的主题部署在`主域名/分站`

例如本站使用Volantis为主站点，将以往配置过的众多主题部署在分站网址，给博客增加了一些可玩性

> Volantis: https://sakurasep.site/
> Next: https://sakurasep.site/next
> Shoka: https://sakurasep.site/shoka
> Butterfly: https://sakurasep.site/butterfly
> Yun: https://sakurasep.site/yun
> Fluid: https://sakurasep.site/fluid
> Matery: https://sakurasep.site/matery

但是，在`Volantis`目录下进行操作，分站内容是无法同步更新的，需要将在`Volantis`下写的文章复制到其他主题目录下，然后编译出`public`文件夹，复制文件夹内容到`Volantis/theme/volantis/source/分站名称`，最后统一编译部署。
这一过程还是稍微繁琐的。

但是我们的操作大多是重复的，那么，为什么不使用批处理来代替人工操作呢？

# 正文

### 涉及到的Cmd命令

* `盘符:` 例如 `G:` 使用此命令使Cmd定位到博客根目录所在硬盘分区
* `cd 文件夹路径` 例如: `cd G:\\Blog\\Volantis` 使用此命令使Cmd定位到博客文件夹目录

> 注意，在使用`cd G:\\Blog\\Volantis`之前，必须使用`G:`，否则将不会定位到目标目录

![](https://cdn.jsdelivr.net/gh/sakurasep/images_01@1.3/Cmd/1.jpg)

> 正确顺序

![](https://cdn.jsdelivr.net/gh/sakurasep/images_01@1.3/Cmd/2.jpg)

* `rmdir /s /q 文件夹路径` 例如`rmdir /s /q G:\\Blog\\Volantis` 使用此命令删除指定路径的文件夹 /s 删除目录树 /q 不会显示是否删除XXX

![](https://cdn.jsdelivr.net/gh/sakurasep/images_01@1.3/Cmd/4.jpg)

* `md 文件夹路径` 例如 `md G:\\Blog\\Volantis` 使用此命令新建指定路径的文件夹
* `copy 文件或文件夹路径 新文件夹路径` 例如 `copt G:\\Blog\\Volantis G:\\Blog\\Butterfly` 使用此命令将指定文件或文件夹复制到新的位置
* `xcopy 文件或文件夹路径 新文件夹路径` `copy`命令的扩展 支持/s /q等

> 注意，如果你删除了`G:\\Blog\\Volantis`后想要复制文件到该路径，需要先使用`md`新建文件夹，否则会报错

![](https://cdn.jsdelivr.net/gh/sakurasep/images_01@1.3/Cmd/3.jpg)

> 正确顺序

![](https://cdn.jsdelivr.net/gh/sakurasep/images_01@1.3/Cmd/2.jpg)

* `pause` 使用此命令使Cmd在执行完命令后不会退出

### Cmd批处理源代码

> 这里仅展示部署一个分站Butterfly的批处理代码

#### 清除文章部署缓存

##### 模板

```bash
盘符:

rmdir /s /q 主站根目录\\theme\\主题\\source\\分站名称

copy 主站根目录\\source\\_posts\\ 分站根目录\\source\\_posts

pause
```

##### 示例

```bash
G:

rmdir /s /q G:\\Blog\\Hexo_Personal\\Stable\\Main_Volantis\\themes\\volantis\\source\\butterfly

copy G:\\Blog\\Hexo_Personal\\Stable\\Main_Volantis\\source\\_posts\\ G:\\Blog\\Hexo_Personal\\Dev\\Dev_Butterfly\\source\\_posts

pause
```
#### 一键部署文章

##### 模板

```bash
盘符:

cd 分站根目录

hexo clean

hexo g

md 主站根目录\\theme\\主题\\source\\分站名称

xcopy /s /q 分站根目录\\public\\ 主站根目录\\theme\\主题\\source\\分站名称
```


##### 示例

```bash
G:

cd G:\\Blog\\Hexo_Personal\\Dev\\Dev_Butterfly

hexo clean

hexo g

md G:\\Blog\\Hexo_Personal\\Stable\\Main_Volantis\\themes\\volantis\\source\\butterfly

xcopy /s /q G:\\Blog\\Hexo_Personal\\Dev\\Dev_Butterfly\\public\\ G:\\Blog\\Hexo_Personal\\Stable\\Main_Volantis\\themes\\volantis\\source\\butterfly
```


---

![about_me](https://cdn.jsdelivr.net/gh/sakurasep/images@1.2/basic/chevereto/about_me.png)