---
title: 《CTF学习笔记》
author: 上杉九月
date: 2021-11-15 21:32:12
## 基本设置
tags:
  - CTF
categories: 学习笔记
excerpt: CTF还是挺有趣的，每天都做一做当作放松吧
## 密码设置
password: 
abstract: 
wrong_pass_message: 密码错误,请重新输入
## 置顶设置
sticky: 10000
top: false
pin: false
## 相关开关
mermaid: false
mathjax: false
math: false
comments: true
hide: false
abbrlink: ctf
## Aplayer播放器设置
music:
  server: netease
  type: song
  id: 545854400
## 文章头图设置
index_img: 'https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/CTF/index.jpg'
banner_img: 'https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/CTF/index.jpg'
headimg: 'https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/CTF/index.jpg'
img: 'https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/CTF/index.jpg'
cover: 'https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/CTF/index.jpg'

---

# 文章简介

> 作者：上杉九月
>
> 排版：上杉九月

# 前言

最近一位朋友入坑CTF，想起来开学还加了一个相关社团参加了几场比赛。还是挺有趣的。

每天做上一两个，就当是放松了。

# 正文

## [BUUCTF在线评测 (buuoj.cn) -- MD5](https://buuoj.cn/challenges#MD5)

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/CTF_Crypto/1.png)
{% endgallery %}

### 题目

e00cf25ad42683b3df678c61f42c6bda

### 解法

题目写的很清楚 MD5，然后给出的这一端字符串（用多了能看出来很像MD5）

扔到**[MD5解密网站](https://www.cmd5.com/)**得到`flag{admin1}`

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/CTF_Crypto/2.png)
{% endgallery %}

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/CTF_Crypto/3.png)
{% endgallery %}

## [BUUCTF在线评测 (buuoj.cn) -- 一眼就解密](https://buuoj.cn/challenges#一眼就解密)

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/CTF_Crypto/4.png)
{% endgallery %}

## 题目

flag：ZmxhZ3tUSEVfRkxBR19PRl9USElTX1NUUklOR30=

## 解法

Base64编码有个特点，编码末尾会出现`=`

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/CTF_Crypto/5.png)
{% endgallery %}

所以说仍然是放到**[Base64解密网站](https://www.qqxiuzi.cn/bianma/base64.htm)**

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/CTF_Crypto/6.png)
{% endgallery %}

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/CTF_Crypto/7.png)
{% endgallery %}
---

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/about_me.png)
{% endgallery %}