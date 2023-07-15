## 基础实验3实验报告

>徐浩博 2020010108 xuhb20@mails.tsinghua.edu.cn

### 文件和目录结构

* src是vue-cli项目的源文件，主要代码位于src/src

### 环境配置

* python 3.9 (安装flask、flask-cors库)
* npm 8.11.0
* vue/cli 5.0.7
* vue 3.2.37

### 运行指南

* **首先开启后端** (请切换到"src"目录下运行app.py)

  ```shell
  $ python app.py
  ```

  注：python需要安装flask、flask-cors库；也可将"python"替换为任何python环境

* **其次开启前端** (请切换到"src"目录下操作）

  * 首先安装依赖
  
    ```shell
    $ npm install
    ```
  
  * 其次进行热启动
  
    ```shell
    $ npm run serve
    ```
  
    注意文件夹所在的路径中不应当含有中文，之后根据提示的"App local at"给出的地址进行访问.
  


### 实现思路

* 在第二次作业基础上增加动态折线图组件，显示于“已连接页面”的下方，代码位于/src/components/connected/ConnectedUsage.vue

* 主要借助echarts的第三方库，绘制line图，初始化数据并且每隔2s更新数据Array，echarts会自动根据数据的变化绘制出合适的动画

* 纵坐标所有流量数据均为Math.random()随机生成，为保证数值不减，下一个值会在前一个值的基础上加上一个随机生成的正数

* 横坐标利用js的Date数据类型，每次更新加2s，并且转换为适合的时间表示字符串

* setInterval每隔2s更新横纵坐标数据

  ![1658420941421](C:\Users\Xsu1023\Desktop\1658420941421.jpg)


### 遇到的问题及解决思路

* vue中使用echarts的问题：echarts官方教程中给出的做法是

  ```javascript
  import * as echarts from 'echarts';
  
  // initialize the echarts instance
  var myChart = echarts.init(document.getElementById('main'));
  ```

  ​	但vue中并不能正确显示，博客中还有在main.js中加入如下语句的用法

  ```javascript
   // 引入echarts
  import echarts from 'echarts'
  Vue.prototype.$echarts = echarts
  ```

  但也不能正确显示。最后发现是因为vue3、echarts5新版本特性导致，正确用法应该如下：

  ```javascript
  import * as echarts from "echarts";
  // 将$echarts设置为全局变量
  app.config.globalProperties.$echarts = echarts;
  ```

  最后使用时采用this.$echarts.init()即可初始化。

