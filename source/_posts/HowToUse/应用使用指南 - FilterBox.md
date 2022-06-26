---
title: 《应用使用指南》FilterBox_第3期
author: 上杉九月
tags:
  - 零基础
  - 应用使用指南
  - 安卓
categories: 应用使用指南
excerpt: 嘿，你的通知栏还好吗？
password: 
abstract: 暂不开放
wrong_pass_message: '密码错误,请重新输入'
sticky: 
top: 
pin: 
mermaid: false
math: false
comments: true
hide: true
music:
  server: netease
  type: song
  id: 31134461
abbrlink: 24878
date: 2021-05-12 19:37:12
index_img:
banner_img:
headimg:
img:
cover:
---

# 文章简介

> 作者：上杉九月
>
> 排版：上杉九月
>
> 发布渠道：博客 微信公众号 酷安 哔哩哔哩专栏 微博
>
> 感谢：

# 前言

你是否对通知栏各式各样的垃圾通知感到心烦，购物软件的虚空中奖，毒瘤软件的广告推送，聊天软件的@全体成员，垃圾短信的恶意骚扰。

![](https://gitee.com/sakurasep/pictures/raw/master/FiltBox/1.jpg)

嘿，那么，我相信FilterBox这款软件可以很好的解决你的困扰。



看，那些烦人的通知都被软件隔离起来了。只保留了重要的内容！

![](https://gitee.com/sakurasep/pictures/raw/master/FiltBox/3.jpg)

嗯，让我们进入正题，希望通过本篇文章，你能够学会FilterBox的使用。

# 正文

## 基本安装与配置

> 本文测试环境
>
> 小米10 MIUI 12.5 21.4.23 版本 安卓11

### 软件下载渠道

> [酷安](https://www.coolapk.com/apk/com.catchingnow.np)
>
> [Google](https://play.google.com/store/apps/details?id=com.catchingnow.np)

### 软件内购

这里引用软件的付费说明

> 通知滤盒 FilterBox 是一款收费软件，初次安装提供试用期，试用期结束后需付费购买。
>
> 目前支持支付宝购买和 Google Play 购买。
>
> 从 Google Play 下载安装的版本，使用 Google Play 进行购买和验证；从其他地方下载安装的，使用支付宝进行购买和验证。
>
> #### Google Play 购买
>
> Google Play 购买仅支持「终身版」购买，不支持订阅。购买后可在绑定 Google Play 账户的所有设备上使用。
>
> #### 支付宝购买
>
> 支付宝购买支持「订阅版」或「终身版」，以订单号为购买凭据，一机一码。如刷机或换手机后重新输入即可激活，旧设备稍后会自动下线。
>
> #### 「终身版」
>
> 终身版售价较高，购买后所有功能永久可用，客户端后续新增所有功能也无需再次付费。
>
> #### 「订阅版」
>
> 有效期内，订阅版与终身版无任何区别。超期后，仍可在本地继续使用，无法更换设备或重新激活。

我使用的是订阅版，毕竟只使用了一部设备。

软件本身支持试用，如果你在看完本教程后对试用较为满意，还请支持正版，谢谢！

### 软件所需权限

FilterBox不需要Root驱动，也不需要Magisk的模块支持。入门门槛较低，市面上绝大多数的安卓手机都可以正常使用。

你只需要授权两项必须权限

* 通知访问权限
* 后台白名单权限

![](https://gitee.com/sakurasep/pictures/raw/master/FiltBox/4.jpg)

本应用需要在后台保持启动状态，所以说需要更改省电策略以及后台锁定清理。

**MIUI系统省电策略为智能限制（目前没有发现掉后台的现象）+ 自启动**

![](https://gitee.com/sakurasep/pictures/raw/master/FiltBox/5.jpg)

**后台清理锁定**

![](https://gitee.com/sakurasep/pictures/raw/master/FiltBox/6.jpg)

### 简单配置

做完一系列准备工作后，便进入到FilterBox的主界面。

![](https://gitee.com/sakurasep/pictures/raw/master/FiltBox/7.jpg)

在`规则 - 推荐`这一页面，是四个基本的配置，点开配置后进行保存。

此时官方推荐的配置文件便会保存在`规则 - 过滤`这一页面。

软件在这里提供了四个基础的规则，但这些规则并不能完全过滤掉垃圾通知，我们可以使用一些其他用户分享的规则，或者根据自己手机通知情况自定义规则。

![](https://gitee.com/sakurasep/pictures/raw/master/FiltBox/8.jpg)



## 自定义你所需要的配置

这里我分类了一些基本的配置原则

* 完全不允许通知 - 非常用功能，可以使用系统自带的通知管理禁止通知
* 过滤某些通知 - 软件的精髓

按照这两个原则，我们来详细的讲讲。

### 完全不允许通知

这一个功能类似与从系统里直接关闭通知。如果使用软件进行通知过滤的话，信息是能够正常推送到手机，然后被软件拦截储存。

不过有谁会喜欢储存流氓软件的垃圾信息呢？



### 过滤某些通知

在这里举一些简单的例子。也算是亲身经历吧。

#### QQ群@全体成员过滤

作为一名大学生，班级群里有时候会有一些重要通知，为了避免遗漏信息，所以班级群都是打开通知权限（其他不重要的群都放入群助手）。

但是辅导员每天雷打不动的@全体成员，要求我们提交健康信息。

截图..

可是提交健康信息我已经全自动化了啊

![](https://gitee.com/sakurasep/pictures/raw/master/FiltBox/20211013202742.png)

参考的是大四学长的Github项目

![](https://gitee.com/sakurasep/pictures/raw/master/FiltBox/20211013202907.png)

所以说对于我来说，这条@全体成员的信息就属于垃圾信息。

但是辅导员有时发其他信息，也不能直接屏蔽他的发言。

这里我们设置规则



#### 软件通知的部分接收

有些软件会存在这样的情况。有的通知挺重要，但是有的通知不那么重要。

这时便可以使用正则方式。

例如淘宝，我想要的是我的物流配送信息，而淘宝天天推送广告通知。

这里我们这样设置规则



在使用了一段时间后，可以点击命中了X条通知查看过滤详情，看有没有误杀的通知



比如淘宝我在之前并没有设置`签收`这一关键词，所以我的快递到了驿站被签收后并没有提醒。



## 其他用户分享的规则

这里分享一些我看见的感觉挺不错的规则。

**酷安用户@Jkkoi 只允许白名单的群聊@你**

```
^(?!白名单群|)(?=.*?(@全体成员|有人@我|有新作业)).*$
```





---

![about_me](https://cdn.jsdelivr.net/gh/sakurasep/images@1.2/basic/chevereto/about_me.png)