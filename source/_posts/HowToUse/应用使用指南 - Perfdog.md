---
title: 《应用使用指南》Perfdog_第2期
date: 2021-03-22 20:04:51
author: 上杉九月
## 基本设置
tags:
  - 零基础
  - PC
  - 应用使用指南
categories: 应用使用指南
excerpt: PerfDog已经收费，本教程不再更新
## 密码设置
password:
abstract:
wrong_pass_message: '密码错误,请重新输入'
## 文章头图设置
index_img: 'https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/IndexImg.png'
banner_img: 'https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/IndexImg.png'
headimg: 'https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/IndexImg.png'
cover: 'https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/IndexImg.png'
## Aplayer播放器设置
music:
  server: netease
  type: song
  id: 27979413
## 相关开关
mermaid: false
mathjax: false
math: false
comments: true
hide: false
---
# 文章简介

> 作者：酷安@上杉九月
>
> 头图设计：酷安@上杉九月
>
> 排版及其发布：酷安@上杉九月


# 前言

## 基本介绍

当我们作为一位消费者购买电子产品时，我们获取第一手信息的方式大多是从各大视频平台的自媒体的首发测评。当我们拿到电子产品之后，如何对它的性能进行测试呢？

有的朋友首先会想到娱乐兔，HappyMatser等跑分软件。毕竟跑分很直观，高就是强，低就是弱。但是当跑分论成为大众的标准，厂商便会想出各种各样的方法来获取更高的跑分。例如前几天被曝光的Realme GT跑分作弊，还有各大厂商的跑分白名单（MIUI检测到跑分软件运行，会将CPU锁在最高频率）。这样的测试只能算是极限性能，可是真正的去游戏里测试，散热设计的不同，调度优化的不同便会产生巨大的差距。

很早之前我也对手里的电子产品进行测试，当时用的是GameBench，不过经常出问题，正版的价格更是无法接受。第二个使用的软件是快否，虽然偶尔会出现一些bug，但是使用体验还是很不错的。不过因为这软件最后一次更新时间是2019年6月，emmm，基本是凉凉了。

去年的时候，把手里的米9换成了米10，因为听说865的性能与功耗都平衡的很好，便产生了测试的想法。这一款由腾讯旗下WeTest开发的软件Perfdog吸引了我。支持`Windows`，`Mac OS X`两个PC平台，可以对安卓和iOS设备进行测试。

# 正文

## 软件测试环境

> 1. 小米10 12G RAM MIUI12.5 21.3.12 官方包
> 2. iPad 2020 第八代 A12 iPad OS 14

## 软件基本安装操作

> [Perfdog官方网站](https://perfdog.qq.com/)

在Perfdog的官网下载对应平台的软件压缩包后，将压缩包解压到电脑的目录中。

在目录找到Perfdog.exe可执行文件，打开后显示登陆界面，这里可以注册账号或使用QQ扫码登陆。

**软件登录界面**

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/1.png)
{% endgallery %}

登录后便会进入到软件的UI界面

**软件界面**

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/2.png)
{% endgallery %}

此时便可以将你的测试设备与电脑进行链接。初始化之后，在左侧的两个选项中选择测试方式（无线or有线 无线可以测试电池相关内容，有线可以同步显示并记录手机画面）和测试应用（支持应用名称搜索）

**选择模式和设备（Windows平台可以多开Perfdog并同时对多部设备测试）**

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/5.jpg)
{% endgallery %}

右下角的加号是添加和减少测试项目。勾选左边的对号便是对此项目进行测试，点击右边的方框选择是否在软件中显示该项目的数据。

**安卓设备与iOS设备的测试项目稍有出入**

**安卓设备**

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/3.jpg)
{% endgallery %}

**iOS设备**

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/4.jpg)
{% endgallery %}

选择好测试应用，调整好测试项目，拿起你的设备，准备开始吧。

## 软件数据解释与详细使用步骤

建议有能力的朋友前往[官网](https://bbs.perfdog.qq.com/article-detail.html?id=5)去详细了解测试项目的具体作用。以下内容是我个人的解读，可能会有一些不准确的地方，还请多多指教。

### 概览

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/6.jpg)
{% endgallery %}

* 平均帧率 - Avg(FPS)
这一个数据对应的是整个测试过程的平均帧率，可以粗略的反应游戏的流畅程度。
* 卡顿次数/每10分钟 - Jank(/10min)
* 严重卡顿次数/每10分钟 - BigJank(/10min)

这里放出perfdog官方给出的计算思路和计算方式

#### PerfDog Jank 计算思路：

> 考虑视觉惯性，假设以前三帧的平均帧耗时为参考，作为vsync时间间隔，连续两次vsync没有新渲染画面刷新，则认为是一次潜在卡顿，也就是说下一帧耗时大于前三帧平均帧耗时2倍，则认为一次潜在卡顿。同时单帧耗时满足大于两倍电影帧耗时1000ms/24x2(由于人眼低于24帧才能辨别画面不连续性)，则认为是一次真正卡顿。同时若单帧耗时大于3倍电影帧耗时，则认为是一次严重卡顿。

#### PerfDog Jank计算方法：

> 同时满足两条件，则认为是一次卡顿Jank.
> ①Display FrameTime>前三帧平均耗时2倍。
> ②Display FrameTime>两帧电影帧耗时 (1000ms/24x2≈83.33ms)。
> 同时满足两条件，则认为是一次严重卡顿BigJank.
> ①Display FrameTime >前三帧平均耗时2倍。
> ②Display FrameTime >三帧电影帧耗时(1000ms/24x3=125ms)。

* 未规范化应用CPU利用率 - Avg(AppCPU)[%]
这里未规范化CPU利用率的计算方式 = CPU执行时间/CPU总时间。如果使用这一项利用率计算APP的性能消耗，会出现在低频运行时和高频运行时CPU利用率相同的情况。
所以Perfdog官方建议使用规范化CPU利用率。
* CPU平均温度 - Avg(CTemp)[°C]
* 规范化应用CPU利用率 - Avg(AppCPU)[%]Normalized
这种CPU利用率的计算方法将CPU的频率考虑进去。
CPU Usage(Normalized)= (CPU执行时间/CPU总时间) * (当前时刻所有CPU频率之和/所有CPU频率最大值之和)
这种计算方法可以更真实的反映出APP的性能消耗。
* 最大内存占用 - Peak(Memory)[MB]
* 平均上传速度 - Avg(Send)[KB/s]
* 平均下载速度 - Avg(Recv)[KB/s]
* 平均功耗 - Avg(Power)[mW]

#### FPS

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/7.jpg)
{% endgallery %}

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/8.jpg)
{% endgallery %}

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/9.jpg)
{% endgallery %}

* 平均帧率 - Avg(FPS)
这一个数据对应的是整个测试过程的平均帧率，可以粗略的反应游戏的流畅程度

* 帧率方差 - Var(FPS)
这一个数据反映的是帧率的波动大小

* 大于等于某一帧率的测试数据百分比 - FPS>=30[%] FPS>=45[%]
这一数据显示可以修改，在右下角，可以看数据的大致分布

* 降帧次数 - Drop(FPS)[/h]
平均每小时两个相邻的FPS点相差大于8帧的次数，反映的是画面的流畅程度

* 卡顿次数/每10分钟 - Jank(/10min)

* 严重卡顿次数/每10分钟 - BigJank(/10min)

* 卡顿率 - Stutter[%]
计算方式 卡顿率 = 卡顿时长 / 总时长

* 平均单帧渲染时间 - Avg(FTime)[ms]
这一个数据可以结合第三张图 Frame Time分析
如果Frame Time时长在某一个点很大幅度超过平均单帧渲染时间，那么大概率是一次卡顿

* 单帧渲染时间超过100ms - FTime>=100ms[%]
单帧渲染时间过长，很有可能导致屏幕没有内容可以刷新，所以画面不动，即为卡顿

* 增量耗时 - Delta(FTime)>100ms[/h]

#### CPU

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/10.jpg)
{% endgallery %}

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/11.jpg)
{% endgallery %}

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/12.jpg)
{% endgallery %}

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/13.jpg)
{% endgallery %}

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/14.jpg)
{% endgallery %}

* 未规范化应用CPU利用率 - Avg(AppCPU)[%]
这里未规范化CPU利用率的计算方式 = CPU执行时间/CPU总时间。如果使用这一项利用率计算APP的性能消耗，会出现在低频运行时和高频运行时CPU利用率相同的情况。

所以Perfdog官方建议使用规范化CPU利用率。

* 未规范化应用CPU利用率小于等于50%/70% - AppCPU<=50%[%] AppCPU<=70%[%]

* 未规范化总的CPU利用率 - Avg(TotalCPU)[%]

* 未规范化总的CPU利用率小于等于50%/70% - TotalCPU<=50%[%] TotalCPU<=70%[%]

* CPU平均温度 - Avg(CTemp)[°C]
下面一排都是规范化的CPU指标，不多赘述

* CPU时钟频率 - CPU Clock
反映的是当前时间CPU各个核心的频率

### Memory

这部分对于性能测试的参考性不是很高。

这里Perfdog提醒：在极限测试情况下，例如开启游戏超高帧率，建议不要勾选收集Memory Usage和Memory Detail，因为部分机型会有性能损耗。

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/15.jpg)
{% endgallery %}

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/16.jpg)
{% endgallery %}

### GPU

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/17.jpg)
{% endgallery %}

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/18.jpg)
{% endgallery %}

* 平均GPU利用率 - Avg(GUsage)[%]
反映的是应用是否可以充分利用GPU性能

* 平均CPU时钟频率 - Avg(GClock)[MHz]
反映的是应用的负载压力

### Network

这一部分对于非实时对战游戏参考性不是很高。测试王者荣耀等对网络要求较高的游戏可以进行关注。

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/19.jpg)
{% endgallery %}

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/20.jpg)
{% endgallery %}

### Battery

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/21.jpg)
{% endgallery %}

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/22.jpg)
{% endgallery %}


* 平均功耗 - Avg(Power)[mW]
在一定程度上反映了当前手机的功耗

* 耗电量 - Sum(Battery)[mWh]
手机在运行测试期间所消耗的电量

* 平均电压 - Avg(Voltage)[mV]

* 平均电流 - Avg(Current)[mA]

### Energy Usage

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/23.jpg)
{% endgallery %}

监控应用使用的能耗情况，可以监控CPU，GPU，网络模块，定位模块等等

## 总结

对于芯片的性能测试，我认为主要应该关注的数据项目为
* 平均帧率 - Avg(FPS)
反映的是设备的游戏运行稳定性，越接近设定的游戏帧率越好。

* 帧率方差 - Var(FPS)
反映的是设备掉帧的严重程度，越小越好。

* 降帧次数 - Drop(FPS)[/h]
反映的是设备的掉帧次数（掉帧次数不等于卡顿次数），越少越好。

* 卡顿次数/每10分钟 - Jank(/10min)
反映的是人所能感知的小卡顿次数，越少越好。

* 严重卡顿次数/每10分钟 - BigJank(/10min)
反映的是人所能感知的严重卡顿次数，越少越好。

* 平均单帧渲染时间 - Avg(FTime)[ms]
反映的是设备对画面单一帧的渲染平均时间，若某一时刻对画面渲染的时间远远超过平均值，说明此时屏幕内容没有刷新，会觉得明显卡顿，单帧渲染时间越贴近平均值越好。

* 规范化的应用CPU利用率 - Avg(AppCPU)[%]Normalized
反映的是排除其他影响因素后应用对于CPU性能的消耗。

* CPU平均温度 - Avg(CTemp)[°C]
反映的是应用长时间运行使CPU升高的温度，作为温控降频的参考数据。

* CPU时钟频率 - CPU Clock
反映的是应用运行时CPU的调度情况，作为卡顿分析和功耗分析的参考数据。

* 平均GPU利用率 - Avg(GUsage)[%]
反映的是应用对于GPU的使用情况。

* 平均CPU时钟频率 - Avg(GClock)[MHz]
反映的是应用运行时GPU的调度情况，作为卡顿分析和功耗分析的参考数据。

* 平均功耗 - Avg(Power)[mW]
反映的是应用运行时的平均功耗，高中低负载在功耗这一测试项目差距较大，例如骁龙888在高负载可以跑到11w的功耗，在低负载只有4w，续航和发热因此不同。

## 云端页面功能介绍

### 用例

#### 我的数据

存放着测试结束后上传的测试结果，当测试结果较多时可以设置条件筛选数据。

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/24.jpg)
{% endgallery %}

#### 任务数据

Perfdog支持创建测试任务，你可以邀请小伙伴一起进行测试，并将数据归档到任务中进行分享。想加入SGPT测试计划的朋友可以在酷安私信我，我会发给你邀请链接，同时你可以看到SGPT计划的最新进展并且参与进来。

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/25.jpg)
{% endgallery %}


### 项目

在这里可以针对不同应用数据进行分类显示

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/26.jpg)
{% endgallery %}

### 具体数据

#### 图表基本操作（数据统计范围修改，图标曲线显示）

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/27.jpg)
{% endgallery %}

#### 图表拖选操作（查看某一时间段的测试数据）

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/28.jpg)
{% endgallery %}

#### 点选查看卡顿具体场景

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/29.jpg)
{% endgallery %}

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/30.jpg)
{% endgallery %}

#### 不同测试范例对比

##### 可以添加5条测试用例

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/31.jpg)
{% endgallery %}

##### 对比不同的测试用例

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/32.jpg)
{% endgallery %}

## 写在最后

今天本来是想要发两篇文章的，顺便开一个能让大家都参与进来的一个企划。先把企划的头图设计放出来吧。

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/PerfDog/SGPT.png)
{% endgallery %}

本篇文章是《应用使用指南》的第二期，我相信大家可以学会Perfdog这款游戏性能测试软件的使用方法。我的一个想法是，从这个系列可以引出很多新的，有趣的系列，让大家都可以参与进去。

如上图所示，从第二期引出了一个SGPT（Soc Game Performance Test）计划，我希望根据自己的理解设计一个游戏测试标准，来测试不同机型对于游戏性能的调度能力。

这一个计划如果只有我一个人收集数据，第一是我个人学业的原因，我并不能有太多时间来进行游戏测试；第二是我个人并没有经济能力去购买设备。如果大家都能参与进来，那么收集到数据会越来越多，我们也能在众多测评里获得一份最真实的数据。

这里我们采用的是Perfdog的团队功能，这里把加入的链接放在这里**[上杉九月的团队](https://perfdog.qq.com/taskdata/201592)**。希望大家可以参与进来，后续会加入激励计划，争取给此计划贡献多的朋友一些动力。

简单介绍结束，说一下目前这个企划遇到的问题。因为我个人平时玩的游戏种类比较少，目前只玩崩坏3和原神，这两类游戏都属于高负载的类型。而对于中等负载和低负载的游戏，个人的了解很少，希望各位可以在评论区讨论一下，什么游戏可以被纳入中负载和低负载的测试计划中，谢谢各位！

## 各平台更新计划

* 个人博客 周六晚八点
* 酷安 微信公众号 周日晚八点
* 哔哩哔哩 微博 周一晚八点

---

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/about_me.png)
{% endgallery %}
