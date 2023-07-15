## 基础实验1实验报告

>徐浩博 2020010108 xuhb20@mails.tsinghua.edu.cn

### 文件和目录结构

* ext是vue build构建出的结果，可以点开内index.html直接查看网页效果
* src是vue-cli项目的源文件，主要代码位于src/src

### 环境配置

* npm 8.11.0
* vue/cli 5.0.7
* vue 3.2.37

### 运行指南

* **首先安装配置** (请在"src"目录下进行下列步骤)

  ```shell
  $ npm install
  ```

  * 编译和热重装以进行开发

    ```shell
    $ npm run serve
    ```

    注意文件夹所在的路径中不应当含有中文，之后根据提示的"App local at"给出的地址进行访问.
  
  
    * 编译产品并优化
  
      ```shell
      $ npm run build
      ```
  
      编译成功的文件在src/dist文件夹内.
  


### 实现思路

* 在vue-cli提供的默认设置脚手上进行开发
* App内部包含HomePage组件(src/src/components//HomePage.vue)，后续实验中可以包含更多页面的组件
* 主体分为NavMain和NavFooter两个组件(src/src/components/navMain/NavMain.vue和src/src/components/navFooter/NavFooter.vue)，分别对应页面主体显示和页脚的导航栏
* NavMain组件主要由橘色背景（包含矩形和两个三角形状）、白色主界面（包含各种需要显示的信息）和断开连接按钮组成
* NavFooter组件主要由四个标签及对应图片组成
* 移动端适配：利用CSS3@media screen实现网页自适应，具体来说，根据浏览器宽度判断是否显示移动端布局；当宽度小至一定限度，通过放缩和移动NavFooter组件位置实现移动端的用户友好界面. 

### 遇到的问题及解决思路

* Duration和Usage的文字、图片难以排版，调整精细的盒模型数值过于繁琐，于是采用grid布局，将各个区域进行了切割并分别填充对应内容
* 在vue框架下难以设置背景颜色，最终参考[博客](https://www.yisu.com/zixun/588906.html)，让HomePage脱离文档流添加fixed属性并设置背景颜色
* 移动端适配难以实现，最终参考[博客](https://blog.csdn.net/weixin_44647098/article/details/116455455)，利用@media screen特性实现了网页自适应
