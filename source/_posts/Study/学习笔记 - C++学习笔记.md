---
title: 《C语言学习笔记》
date: 2021-05-06 19:04:37
author: 上杉九月
## 基本设置
tags:
  - C语言
categories: 学习笔记
excerpt: 零散的一些C语言习题
## 密码设置
password: 
abstract: 
wrong_pass_message: 密码错误,请重新输入
## 置顶设置
sticky: 10000
top: false
pin: false
## Aplayer播放器设置
music:
  server: netease
  type: song
  id: 1466878839
## 文章头图设置
index_img: 'https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Wallpaper/1.jpg'
banner_img: 'https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Wallpaper/1.jpg'
headimg: 'https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Wallpaper/1.jpg'
img: 'https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Wallpaper/1.jpg'
cover: 'https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/Wallpaper/1.jpg'
## 相关开关
mermaid: false
mathjax: false
math: false
comments: true
abbrlink: cplusplus
hide: false
---

# 文章简介

> 作者：上杉九月
>
> 排版与发布：上杉九月

# 前言

> 记录一下程序开发实训课程的题解。
>
> 我是用的IDE为VsCode，所以在代码中会出现`system("pause");`

# 正文

### P1000. 素数判断

#### 题目描述

编写一个函数isprime(n).判断整数n是否为素数.编写程序使用此函数,当输入一个整数时,对它进行判断,当为素数时,输出1.否则,输出0.

#### 输入输出格式

##### 输入格式

输入一个整数

##### 输出格式

输出判断结果0或1

#### 输入输出样例

##### 输入样例 #1

```
45
```

##### 输出样例 #1

```
0
```

#### 题解

> 代码：上杉九月

##### 思路

本题十分简单。

* 使用`temp`变量存储`num`的因数个数
* 使用for从2循环到`num`，若出现`num`整除`i`时使`temp++`
* 最后使用if判断，`temp`为0则说明只有1和它本身两个因数，故输出1；`temp > 0`则说明有其他的因数，故输出0

##### AC代码

```cpp
#include <iostream>
#include <cstdio>
#include <cmath>
using namespace std;
int temp;
int pr[10000000];
int isprime(int num)
{
    int temp = 0;
    for(int i = 2; i < num; i++)
    {
        if(num % i == 0)
        {
            temp++;
        }
    }
        if(temp == 0)
        {
            return 1;
        }
        else
        {
            return 0;
        }
}
int main()
{
    int num;
    cin>>num;
    cout<<isprime(num);
    system("pause");
    return 0;
}
```

### P1001. 直角三角形

#### 题目描述

任意输入三条边的边长（实数类型），判断能否组成三角形，如果不可以组成三角形，程序输出“It is not a triangle”；如果可以组成三角形，进而判断该三角形是否是直角三角形，如果是直角三角形，程序输出“It is a right triangle”，否则输出“It is not a right triangle”。

#### 输入输出格式

##### 输入格式

三条边的边长

##### 输出格式

判断结果

#### 输入输出样例

##### 输入样例 #1

6 8 10

##### 输出样例 #1

It is a right triangle

#### 题解

> 代码：上杉九月

##### 思路

* 首先为了方便处理数据，先将三条边长按照从小到大的顺序排列。排序算法随意，这里为了省事直接sort
* 然后`Judge_Triangle`对数据预处理，筛选出来是否为三角形。若是，则进入下一个函数`Right_Triangle`，若不是，直接输出**It is not a triangle**
* 判断直角三角形也很简单，勾股定理即可

##### AC代码

```cpp
#include <iostream>
#include <cstdio>
#include <cmath>
#include <algorithm>
using namespace std;
int a[3];
void Right_Triangle()
{
    if(a[0] * a[0] + a[1] * a[1] == a[2] * a[2])
    {
        cout<<"It is a right triangle";
    }
    else
    {
        cout<<"It is not a right triangle";
    }
}
void Judge_Triangle()
{
    if(a[0] + a[1] > a[2])
    {
        Right_Triangle();
    }
    else
    {
        cout<<"It is not a triangle";
    }
}
int main()
{
    for(int i = 0; i < 3; i++)
    {
        cin>>a[i];
    }
    sort(a,a+3);
    Judge_Triangle();
    system("pause");
    return 0;
}
```

### P1002. 直角三角形，求最小余弦值

#### 题目描述

任意输入三条边的边长（整数类型），判断能否组成三角形，如果不可以组成三角形，程序输出“It is not a triangle”；如果可以组成三角形，进而判断该三角形是否是直角三角形，如果不是直角三角形，程序输出“It is not a right triangle”，否则输出最小余弦值的最简分式。比如三边分别是6、8、10时，最小的余弦值是6/10，那么输出的结果应该是3/5。

#### 输入输出格式

##### 输入格式

三条边的边长

##### 输出格式

最小余弦值的最简分式

#### 输入输出样例

##### 输入样例 #1

```
6 8 10
```

##### 输出样例 #1

```
3/5
```

#### 题解

> 代码：上杉九月

##### 思路

* 本题是在上题的基础上增加了分式化简，因为已经对边长进行了排序，故余弦值一定是`a[0] / a[2]`
* 化简就是找两者的最大公因式，使用`temp`存储，然后使用for遍历较小的边
* 因为`temp`这里初始为0，所以`temp`为0说明两者没有公因式，直接输出

##### AC代码

```cpp
#include <iostream>
#include <cstdio>
#include <cmath>
#include <algorithm>
using namespace std;
int a[3];
int temp;
void GCD()
{
    for(int i = 2; i <= a[0]; i++)
    {
        if(a[0] % i == 0 && a[2] % i == 0)
        {
            temp = i;
        }
    }
}
void Cos_Triangle()
{
    GCD();
    if(temp == 0)
    {
        cout<<a[0]<<"/"<<a[2];
    }
    else
    {
        cout<<(a[0] / temp)<<"/"<<(a[2] / temp);
    }
}
void Right_Triangle()
{
    if(a[0] * a[0] + a[1] * a[1] == a[2] * a[2])
    {
        Cos_Triangle();
    }
    else
    {
        cout<<"It is not a right triangle";
    }
}
void Judge_Triangle()
{
    if(a[0] + a[1] > a[2])
    {
        Right_Triangle();
    }
    else
    {
        cout<<"It is not a triangle";
    }
}
int main()
{
    for(int i = 0; i < 3; i++)
    {
        cin>>a[i];
    }
    sort(a,a+3);
    Judge_Triangle();
    system("pause");
    return 0;
}
```

### P1003. 求三角形面积

#### 题目描述

若已知三角形三个边的长度分别为a,b,c（并假设三个边长度的单位一致，在本编程题中忽略其单位），则可以利用公式 $S = \sqrt{s(s - a)(s - b)(s - c)}$，然后利用上述公式计算面积并输出，结果小数点后保留3位有效数字。

#### 输入输出格式

##### 输入格式

从控制台输入三个整数表示三角形三个边的长度，以空格分隔三个整数。

##### 输出格式

向控制台输出求得的三角形的面积，小数点后保留三位有效数字。

#### 输入输出样例

##### 输入样例 #1

```
4 4 6
```

##### 输出样例 #1

```
7.937
```

#### 题解

> 代码：上杉九月

##### 思路

* 有公式$S = \sqrt{s(s - a)(s - b)(s - c)}$，直接根据公式写代码
* 使用`.3f`保留三位小数

##### AC代码

```cpp
#include <iostream>
#include <cstdio>
#include <cmath>
#include <algorithm>
using namespace std;
int main()
{
    int a, b, c;
    float s, area;
    cin>>a>>b>>c;
    s = (a + b + c) / 2;
    area = sqrt((s * (s - a) * (s - b) * (s - c)));
    printf("%.3f", area);
    system("pause");
    return 0;
}
```

### P1004. 整数各位数求和

#### 题目描述

 编写一个函数sum(i),将输入的整形参数i的各位求和，返回求和结果。在main()函数中测试此函数，从键盘输入整数n（n在区间[1,20]），然后再输入n个非负整数，对于每一个非负整数调用sum函数求各位数和，将结果输出到屏幕。

#### 输入输出格式

##### 输入格式

从键盘输入一个正整数n，然后有n行输入，分别表示n个非负整数。

##### 输出格式

在屏幕上分别输出n行，第i行依次对应第i个非负整数的各位之和。

#### 输入输出样例

##### 输入样例 #1

```
4
234567
0
999999
000432
```

##### 输出样例 #1

```
27
0
54
9
```

##### 样例说明

```
整数234567、0、999999和000432各位之和（个位、十位、百位&hellip;&hellip;相加）分别为：27、0、54和9，故在屏幕上打印输出：
27
0
54
9
```

#### 题解

> 代码：上杉九月

##### 思路

* 使用变量`temp`存储结果，对于保存在数组里的数据，%10取最后一位，/10舍去最后一位，当num舍到个位数，直接加到`temp`，输出结果

##### AC代码

```cpp
#include <iostream>
#include <cstdio>
#include <cmath>
#include <algorithm>
using namespace std;
void Sum_Number(int num)
{
    int temp = 0;
    while(num > 10)
    {
        temp += num % 10;
        num /= 10;
    }
    temp += num;
    cout<<temp<<"\n";
}
int main()
{
    int n;
    cin>>n;
    int a[n];
    for(int i = 0; i < n; i++)
    {
        cin>>a[i];
    }
    for(int i = 0; i < n; i++)
    {
        Sum_Number(a[i]);
    }  
    system("pause");
    return 0;
}
```

### P1005. 玫瑰花数

#### 题目描述

如果一个四位数各位数字的四次方之和恰好等于该数本身，那么这个四位数就是一个玫瑰花数，例如：

$1634 = 1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256$        

写一个函数，判断某一个四位数是不是玫瑰花数，如果是玫瑰花数返回1，否则返回0。并在主函数中调用该函数，最终输出所有的玫瑰花数。                

#### 输入输出格式

##### 输入格式

没有输入

##### 输出格式

所有的四位玫瑰花数。（每行中仅显示一个玫瑰花数）

#### 输入输出样例

无

#### 题解

> 代码：上杉九月

##### 思路

* 该题枚举即可，从1000开始枚举到10000，a数组分别存个十百千四位。
* `num`将每一位四次方的结果存起来，和此时枚举的`i`作比较，若是，则输出。

##### AC代码

```cpp
#include <iostream>
#include <cstdio>
#include <cmath>//pow(10, x)
#include <algorithm>
using namespace std;
int main()
{
    int a[4];
    int num;
    for(int i = 1000; i < 10000; i++)
    {
        int temp = i;
        a[0] = temp % 10;
        temp /= 10;
        a[1] = temp % 10;
        temp /= 10;
        a[2] = temp % 10;
        a[3] = temp / 10;
        num = pow(a[0], 4) + pow(a[1], 4) + pow(a[2], 4) + pow(a[3], 4);
        if(num == i)
        {
            cout<<i<<"\n";
        }
    }
    system("pause");
    return 0;
} 
```

### P1006. 旋转魔方阵

#### 题目描述

输入一个自然数Ｎ（N属于2到15），要求输出如下的魔方阵，即边长为N*N，元素取值为1至N*N，1在左上角，呈顺时针方向依次放置各元素。
 N=3时：
  1  2  3
  8  9  4
  7  6  5

#### 输入输出格式

##### 输入格式

从标准输入读取一个整数N。

##### 输出格式

向标准输出打印结果。输出符合要求的方阵，每个数字占5个字符宽度，向右对齐，在每一行末均输出一个回车符。

#### 输入输出样例

##### 输入样例 #1

```
4
```

##### 输出样例 #1

```
    1    2    3    4
   12   13   14    5
   11   16   15    6
   10    9    8    7
```

#### 题解

> 代码：上杉九月

##### 思路

* 使用模拟算法，`x`和`y`为坐标，使用for从1到`num`循环
* 明确四个方向的填数代码，注意两点。一是坐标`x`和`y`需要先改变，也就是`++x ++y`，同时填数变量`tmp`也需要先增加。（因为我们在填数时始终是在找下一个位置）
* 本题存在规律（代码结尾处）。先进行向右的移动，然后就是两次循环，按照下左上右的规律。
* 本题和接下来几个题使用的动态二维数组定义代码是通用的，可以直接当作模板套用

```cpp
    int **element = NULL;
	int size;
	cin>>size;

    element = new int *[size];
    for(int i = 0; i < size; i++)
    {
        element[i] = new int [size];
    }
```

##### AC代码

```cpp
#include <iostream>
#include <cstdio>
#include <iomanip>
using namespace std;
int x, y, tmp;
int main()
{
    // 定义动态二维数组
    int **element = NULL;
    int size;
    cin>>size;
    int num = size;

    element = new int *[size];
    for(int i = 0; i < size; i++)
    {
        element[i] = new int [size];
    }

    // 核心代码
    for(int j = num; j > 0; j--)//right
    {
        element[x][y++] = ++tmp;
    }
    
    y--;

    while(tmp < size * size)
    {
        num--;
        for(int j = num; j > 0; j--)//down
        {
            element[++x][y] = ++tmp;
        }
        for(int j = num; j > 0; j--)//left
        {
            element[x][--y] = ++tmp;
        }
        num--;
        for(int j = num; j > 0; j--)//up
        {
            element[--x][y] = ++tmp;
        }
        for(int j = num; j > 0; j--)//right
        {
            element[x][++y] = ++tmp;
        }
    }
    
    // 输出
    for(int i = 0 ; i < size; i++)
    {
        cout<<endl;
        for(int j = 0; j < size; j++)
        {
            
            cout<<setw(5)<<element[i][j];
        }
    }
    
    // 面板停留
    system("pause");
    return 0;
}

/* 规律
1  2  3  4
12 13 14 5
11 16 15 6
10 9  8  7
3 3 3 2 2 1 1
*/
```

### P1007. 折叠方阵

#### 题目描述

给定一个起始数（大于等于1，小于等于20）和方阵的阶数（大于等于1，小于等于20），编程求得并输出该折叠方阵。一个起始数为10，4阶折叠方阵为：

 

 10  11  14  19

 13  12  15  20

 18  17  16  21

 25  24  23  22

#### 输入输出格式

##### 输入格式

从标准输入中输入两个正整数分别表示起始数和方阵的阶数，以一个空格分隔这两个数字。

##### 输出格式

将生成的折叠方阵按行输出到标准输出上，每个数字占4个字符的宽度，靠右对齐，各数字之间不再有空格分隔，每行末尾有回车换行。

#### 输入输出样例

##### 输入样例 #1

```
3 5
```

##### 输出样例 #1

```
   3   4   7  12  19
   6   5   8  13  20
  11  10   9  14  21
  18  17  16  15  22
  27  26  25  24  23
```

#### 样例说明

样例输入的起始数为3，方阵的阶数为5，按行输出生成的折叠方阵，每个数字占4个字符的宽度。

提示：输出时为了使每个数字占4个字符宽度，c程序可以使用：printf("%4d",......)进行控制输出。

#### 题解

> 代码：上杉九月

##### 思路

* 本题依然有规律，请把方阵分解为朝向左的L。同时把第一行作为每一次循环的开始。
* L的大小是和列号相同。
* 核心代码为，向下的循环和向左的循环。

##### AC代码

```cpp
#include <iostream>
#include <cstdio>
#include <iomanip>
using namespace std;
int x, y;
int main()
{
    
    // 定义动态二维数组
    int **element = NULL;
    int start;
    int size;
    cin>>start>>size;
    int num = 1;
    int tmp = start;

    element = new int *[size];
    for(int i = 0; i < size; i++)
    {
        element[i] = new int [size];
    }
    
 
    // 核心代码

    element[x][y] = tmp;

    for(num = 1; num < size; num++)
    {
        //第一行
        x = 0;
        y = num;
        while(tmp <= num * num - 1 + start)
        {
            for(int j = 1; j <= num + 1; j++)//down
            {
                element[x++][y] = ++tmp;
            }
            x--;//纠正X轴
            for(int j = 1; j <= num; j++)//left
            {
                element[x][--y] = ++tmp;
            }
        }

    }


    
    // 输出
    for(int i = 0 ; i < size; i++)
    {
        cout<<endl;
        for(int j = 0; j < size; j++)
        {
            
            cout<<setw(4)<<element[i][j];
        }
    }
    
    // 面板停留
    system("pause");
    return 0;
}
```

### P1008. 方阵乘法运算

#### 题目描述

从键盘输入一个正整数n（n属于[1,10]），表示进行乘法运算的两个整形方阵的阶。然后分别输入两个整形方阵A和B，计算A*B后将结果输出到屏幕。

#### 输入输出格式

##### 输入格式

从键盘输入一个正整数，然后再输入两个整形方阵。

##### 输出格式

在屏幕上输出两个整形方阵的乘积。

#### 输入输出样例

##### 输入样例 #1

```
3
1 1 1
3 3 3
6 6 6
9 9 9
6 6 6
5 5 5
```

##### 输出样例 #1

\########20########20########20
\########60########60########60
\#######120#######120#######120

#### 样例说明

首先输入正整数3,说明接下来要输入的方阵是3*3的。因为
1 1 1     9 9 9     20 20 20
3 3 3  *  6 6 6  =  60 60 60
6 6 6    5 5 5     120 120 120
所以在屏幕上打印：
\########20########20########20
\########60########60########60
\#######120#######120#######120

注："#"代表空格，每个输出的整数占10位，不足10位在整数的左边用空格补足。

#### 题解

> 代码：上杉九月

##### 思路

* `element[]`为存储第一个矩阵,`element_02[]`为存储第二个矩阵,`element_03[]`为输出结果矩阵
* [矩阵乘法_百度百科 (baidu.com)](https://baike.baidu.com/item/矩阵乘法/5446029?fr=aladdin)
* 只要是看懂了矩阵的乘法运算规律，通过一一对应，本题便能做出来。

##### AC代码

```cpp
#include <iostream>
#include <cstdio>
#include <iomanip>
using namespace std;
int x, y;
int main()
{
    
    // 定义动态二维数组
    int **element = NULL;
    int **element_02 = NULL;
    int **element_03 = NULL;
    int size;
    cin>>size;

    element = new int *[size];
    for(int i = 0; i < size; i++)
    {
        element[i] = new int [size];
    }

    element_02 = new int *[size];
    for(int i = 0; i < size; i++)
    {
        element_02[i] = new int [size];
    }

    element_03 = new int *[size];
    for(int i = 0; i < size; i++)
    {
        element_03[i] = new int [size];
    }

    // 输入数据
    for(int i = 0; i < size; i++)
    {
        for(int j = 0; j < size; j++)
        {
            cin>>element[i][j];
        }
    }

    for(int i = 0; i < size; i++)
    {
        for(int j = 0; j < size; j++)
        {
            cin>>element_02[i][j];
        }
    }

    // 核心代码

    for(int i = 0; i < size; i++)
    {
        for(int j = 0; j < size; j++)
        {
            element_03[i][j] = 0;
        }
    }

    for(int i = 0; i < size; i++)
    {
        for(int j = 0; j < size; j++)
        {
            int num = size;
            int y = 0;
            while(num > 0)
            {
                element_03[i][j] += element[i][y] * element_02[y][j];
                y++;
                num--;
            }   
        }
    }



    // 结果输出
    for(int i = 0; i < size; i++)
    {
        for(int j = 0; j < size; j++)
        {
            cout<<setw(10)<<element_03[i][j];
        }
        cout<<endl;
    }

    // VSCode
    system("pause");
    return 0;


}
/*
3
1 1 1 9 9 9
3 3 3 6 6 6
6 6 6 5 5 5
*/
```

### P1009. N阶魔方阵

#### 题目描述

魔方阵指一个A是NxN矩阵（在本题中N仅为奇数，且N>1），以自然数1，2， 。。。 N2为元素进行填充，每个位置上分别放置一个元素，使每行、每列以及主、副对角线上的元素之和都相等。
如3x3魔方阵，图在每行、每列、主对角线、副对角线上元素之和均为15：
8 1 6
3 5 7
4 9 2
奇数阶魔方阵的生成算法如下，初始矩阵A为空，从1开始依据下面的规则依次放置各个自然数（注意在下面的叙述中各元素行、列下标均以1-N计数）：
\1. 将1放在第一行正中的位置，即A[1, (j+1)/2]；
\2. 设最后放置的元素是A[i, j]，则将下一个元素放在最后一个插入位置的右上方，即A[i-1, j+1]。但如果该位置已超出方阵的上边界（即如果i<0），则新位置取该列的最下一个位置，即A[N, j+1]；如果该位置已超出方阵的右边界，取新位置取该行的最左一个位置，即A[i-1, 1]。
\3. 若最近一个插入元素为N的整倍数，则新位置取最后插入元素下面的位置，即A[i+1, j]。
输入一个奇数N，打印对应的N阶魔方阵。

#### 输入输出格式

##### 输入格式

控制台输入一奇数N。

##### 输出格式

输出一个N*N的魔方阵，其中每个数字占4位字符的宽度，向右对齐。

#### 输入输出样例

##### 输入样例 #1

```
5
```

##### 输出样例 #1

```
  17  24   1   8  15
  23   5   7  14  16
   4   6  13  20  22
  10  12  19  21   3
  11  18  25   2   9
```

#### 样例说明

输入奇数5，输出5阶魔方阵。

#### 题解

> 代码：上杉九月

##### 思路

* 本题主要是考察限定规则，题目中每一次新的位置都是在原来位置的右上方，此时你需要考虑两种情况：一是超出数组的边界，一是右上角已经存在数据。
* 本题代码使用了`maps`数组来标记数据的填充，在每一次填数操作后都使得该位置的`maps`数组为1。
* 判断情况有以下几种。
  * 超右边界但是不超上边界
  * 超上边界但是不超右边界
  * 既超上边界也超右边界
  * 既不超上边界也不超右边界

##### AC代码

```cpp
#include <iostream>
#include <cstdio>
#include <iomanip>
using namespace std;
int main()
{

    // 核心代码
    int size;
    cin>>size;
    int x = 0, y = (size / 2);

    // 定义动态二维数组
    int **element = NULL;
    int **maps = NULL;

    element = new int *[size];
    for(int i = 0; i < size; i++)
    {
        element[i] = new int [size];
    }

    maps = new int *[size];
    for(int i = 0; i < size; i++)
    {
        maps[i] = new int [size];
    }

    for(int i = 0; i < size; i++)
    {
        for(int j = 0; j < size; j++)
        {
            element[i][j] = 0;
            maps[i][j] = 0;
        }
    }

    element[x][y] = 1;
    for(int num = 2; num <= size * size; num++)
    {
        if((num - 1) % size == 0)
        {   
            element[++x][y] = num;
            maps[x][y] = 1;
            continue;
        }

        if(x - 1 < 0 && y + 1 < size && maps[size - 1][++y] == 0)// 超上边界但不超右边界
        {
            x = size - 1;
            element[x][y] = num;
            maps[x][y] = 1;
            continue;
        }

        if(y + 1 > size - 1 && x - 1 >= 0 && maps[--x][0] == 0)// 超右边界但不超上边界
        {
            y = 0;
            element[x][y] = num;
            maps[x][y] = 1;
            continue;
        }

        if(x - 1 < 0 && y + 1 > size - 1 && maps[size - 1][0] == 0)// 既超上边界也超右边界
        {
            x = size - 1;y = 0;
            element[x][y] = num;
            maps[x][y] = 1;
            continue;
        }

        if(x - 1 >= 0 && y + 1 < size && maps[--x][++y] == 0)
        {
            element[x][y] = num;
            maps[x][y] = 1;
            continue;
        }
    }

    // 输出
    for(int i = 0; i < size; i++)
    {
        for(int j = 0; j < size; j++)
        {
            cout<<setw(4)<<element[i][j];
        }
        cout<<endl;
    }

    system("pause");
    return 0;
}
```

### P1010. 完美数

#### 题目描述

所有真约数（除本身之外的正约数）的和等于它本身的正整数叫做完美数，又叫做完全数或完备数。当所有真约数（除本身之外的正约数）的和等于它本身的正整数叫做亏数；相反情况时，叫做盈数。

比如“4”这个数，它的真约数有1，2，其和是3，3比4本身小，这样的自然数就叫做亏数（又叫做缺数），类似的还有5，7，8等等。比如“12”这个数，它真约数有1，2，3，4，6，其和是16，16比12本身大，这样的自然数就叫做盈数（又叫做丰数，或过剩数或富裕数），类似的还有12，18，20等等。

完美数就是既不盈余，又不亏欠的自然数，比如“6”这个数，它真约数有1，2，3，其和是1+2+3=6，刚好等于6本身。

要求用户从键盘上输入任意一个自然数，判断该数是盈数、亏数还是完美数。如果该数是亏数，输出“Deficit”；如果该数是盈数，输出“Surplus”；如果该数 是完美数，则输出“Perfect” 。

#### 输入输出格式

##### 输入格式

一个自然数。

##### 输出格式

如果该数是亏数，输出“Deficit”；如果该数是盈数，输出“Surplus”；如果该数是完美数，输出“Perfect”。

#### 输入输出样例

##### 输入样例 #1

```
6
```

##### 输出样例 #1

```
Perfect
```

#### 题解

> 代码：上杉九月

##### 思路

* 本题实际上是找因数的改动版本。先找到输入数的因数，然后将所有因数（除它本身以外）相加。

##### AC代码

```cpp
#include <iostream>
#include <cstdio>
using namespace std;
int main()
{
    int num;
    cin>>num;
    int ans = 0;
    
    //Core
    for(int i = 1; i < num; i++)
    {
        if(num % i == 0)
        {
            ans += i;
        }
    }

    if(ans > num)
    {
        cout<<"Surplus";
    }
    else if(ans < num)
    {
        cout<<"Deficit";
    }
    else
    {
        cout<<"Perfect";
    }

    system("pause");
    return 0;
}
```

### P1011. 一元二次方程的根

#### 题目描述（不考虑虚根）

在实数范围内求方程$ax^2+bx+c=0$的根。方程的系数$a,b,c$由用户从键盘上输入。

#### 输入输出格式

##### 输入格式 #1

方程的系数$a,b,c$（假设是整型数据）。

##### 输出格式 #1

实数范围内求方程的根，如果存在实数根，结果保留两位小数且$x1 \ge x2$。当有两个实根时，要求先输出实根$x=[-b+\sqrt{(b2-4ac)}]/2a$，空格后再输出实根$x=[-b-\sqrt{(b2-4ac)}]/2a$；当有两个相同的实根时，仅输出一个实根$x=[-b+\sqrt{(b2-4ac)}]/2a$或$x=[-b-\sqrt{(b2-4ac)}]/2a$即可；当没有实根时，输出"NONE"。

#### 输入输出样例

##### 输入样例 #1

```
1 8 4
```

##### 输出样例 #1

```
-0.54 -7.46
```

#### 题解

> 代码：上杉九月

##### 思路

* 注意Δ的判断即可，本题没有难度。

##### AC代码

```cpp
#include <iostream>
#include <cstdio>
#include <math.h>
using namespace std;
int main()
{
    int a, b, c;
    double ans1, ans2;
    cin>>a>>b>>c;

    if(b * b - 4 * a * c < 0)
    {
        cout<<"NONE";
        return 0;
    }
    ans1 = (-b + sqrt(b * b - 4 * a * c)) / (2 * a);
    ans2 = (-b - sqrt(b * b - 4 * a * c)) / (2 * a);

    if(ans1 == ans2)
    printf("%.2lf", ans1);
    else
    printf("%.2lf %.2lf", ans1, ans2);
    system("pause");
    return 0;
}
```

#### 题目描述(考虑虚根)

在实数范围内求方程$ax^2+bx+c=0$的根。方程的系数$a,b,c$由用户从键盘上输入。

#### 输入输出格式

##### 输入格式

方程的系数$a,b,c$（假设是整型数据）。

##### 输出格式

实数范围内求方程的根，如果存在实数根，结果保留两位小数且$x1 \ge x2$。当有两个实根时，要求先输出实根$x=[-b+\sqrt{(b2-4ac)}]/2a$，空格后再输出实根$x=[-b-\sqrt{(b2-4ac)}]/2a$；当有两个相同的实根时，仅输出一个实根$x=[-b+\sqrt{(b2-4ac)}]/2a$或$x=[-b-\sqrt{(b2-4ac)}]/2a$即可；当没有实根时，输出一对共轭复根。

#### 输入输出样例

##### 输入样例 #1

```
1 2 3
```

##### 输出样例 #1

```
-1.00+1.41i -1.00-1.41i
```

#### 题解

> 代码：上杉九月

##### 思路

* 当Δ < 0时，根为$(-b±\sqrt{(-Δ)i})/2a$

##### AC代码

```cpp
#include <iostream>
#include <cstdio>
#include <math.h>
using namespace std;
int main()
{
    double a, b, c;
    double ans1, ans2;
    cin>>a>>b>>c;
    int delta = b * b - 4 * a * c;

    if(delta < 0)
    {
        ans1 = (-b) / (2 * a);
        ans2 = (sqrt(-delta)) / (2.0 * a);
        printf("%.2lf+%.2lfi ", ans1, ans2);
        printf("%.2lf-%.2lfi", ans1, ans2);
        system("pause");
        return 0;
    }
    ans1 = (-b + sqrt(b * b - 4 * a * c)) / (2 * a);
    ans2 = (-b - sqrt(b * b - 4 * a * c)) / (2 * a);

    if(ans1 == ans2)
    printf("%.2lf", ans1);
    else
    printf("%.2lf %.2lf", ans1, ans2);
    system("pause");
    return 0;
}
```

---

{% gallery %}
![](https://xingqiu-tuchuang-1256524210.cos.ap-shanghai.myqcloud.com/5199/about_me.png)
{% endgallery %}