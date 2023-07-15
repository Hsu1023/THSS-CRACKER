## Project Report: Build Your Own Router

> 徐浩博 2020010108



### 1. 实验环境

* 操作系统：Ubuntu 16.04.12 (VMWare Virtual Machine)
* 编译器：g++ 5.4.0
* IDE: Visual Studio Code



### 2. 总体思路

三处需要完成补充的代码是：arp-cache定期处理request和entry、routing-table查询路由表、simple-router的处理包。

* arp-cache定期处理request和entry
  * 对于request，如果目的地址的arp request第5次还没有回应，则直接清除request并且回传ICMP说明host unreachable；如果还没有超过5次，则发送arp request并且累加计数
  * 对于cached entries，如果isValid为否，则清除该entry
* routing-table查询路由表
  * 对于掩码Mask处理后，目的地址和entry destination相同的entry，比较哪个掩码更长，选择最长掩码的entry
* simple-router的处理包
  * 首先通过ethernet header判断type，只处理arp和ipv4两种包
  * 对于arp，通过op判断request/reply
    * 对于arp request，如果目的ip是路由器端口的ip，则发送arp reply；否则忽略
    * 对于arp reply，如果不存在该ip/mac配对，则缓存进cache，并且发送所有目的ip是该ip的排队的packet
  * 对于ipv4，先检验sum值，然后判断目的ip是否是路由器端口
    * 如果是路由器端口
      * ipv4类型为icmp，则回复icmp type=0，code=0
      * 类型不为icmp，则直接回复icmp type=3，code=3
    * 如果不是路由器端口，则需要转发
      * 如果TTL<=1，则超时，回复icmp type=11，code=0
      * 如果未超时则根据arp-cache、routing-table等转发
* 注：以上的“回复”"转发"等均忽略了arp-cache无此ip的可能，实际流程为无此ip则排队并发送arp request，得到arp reply后再发送



### 3. 困难与挑战

* 不熟悉C++11：比如Buffer类型，实际上是std::vector\<unsigned char\>，而我一开始并不知道如何便捷操作vector，如赋值、拷贝等；直到和同学交流获知data()方法可以直接获得指向内存的指针，从而可以直接采用memcpy、memset等针对指针的操作。
* 更新ip/mac后对排队中request的处理：原来我将整个packet封装好后，唯独空缺ethernet的destination mac位置，再ip/mac查询到后直接装填该位置并发送，后来发现如此做会非常麻烦，于是直接用递归的方式，对于已有ip/mac的排队packet直接递归从头处理，优化了程序流程，也优化了程序可读性。
* 多线程死锁问题：router必须采用多线程和线程锁（主要集中在arp-cache的更新维护上）。原框架中锁采用的是std::lock_guard\<std::mutex\>，然而它并不显式acquire和release，且涉及lookup、queueRequest等诸多函数，在arp-cache处理request需要发送icmp时，调用含有锁的函数就会造成死锁。其表现为ping一个不存在的ip时router死锁卡死。为此，我特别copy了一份无锁的lookup、queueRequest以供调用，阻止了死锁的发生。



### 4. 附加库调用

​	无附加库调用



### 5. 实验结果

* 完成了实验spec内的所有要求，并且autograde获得45 / 45 scores

  ![image-20221207164756954](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20221207164756954.png)

*  测试ping结果如下：
    * ping其他client/server ip

      ![image-20221207165114513](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20221207165114513.png)

    * ping路由器端口ip

      ![image-20221207165204187](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20221207165204187.png)

    * ping不存在的ip

      ![image-20221207165239351](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20221207165239351.png)

* 测试traceroute结果如下：

  * traceroute其他client/server ip

    ![image-20221207165328587](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20221207165328587.png)

    * traceroute路由器端口ip

      ![image-20221207165357911](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20221207165357911.png)



### 6. 对于项目的建议

* 实验环境所需的ubuntu16和python 2已经过时，配置实验环境会非常复杂，且低版本的ubuntu桌面版性能极差，打开vscode会时常面临崩溃的问题；建议实验能够更新环境需求