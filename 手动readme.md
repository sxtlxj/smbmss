1、这东西有概率跑成功，部分时候虽然报错但是数据已经delete掉了
2、传值的时候可能会出现一点bug，暂时不清楚原因
（可以确定只会在jsp和servlet之间出现，大概率是web.xml的配置）
3、js文件直接废弃了，通过jsp直接到servlet，用了个confirm的弹窗
4、confirm测试的时候可以正常弹出来，如果不行的话可以看一下有没有什么前朝余孽，之前foot.jsp里面有个用到了日期的就不行，现在已经删掉了
5、可能会有下一个version，看五六点醒不醒得来
6、（视觉效果的话）adduser和delete可以最后做个重定向而不是一片空白，可能不是很有必要
7、总体的话就是对jsp里面的那个X加了一个onclick属性
点击按钮弹出confirm
如果confirm是True的话将id传到servlet，这里新建了一个DelUserServlet
servlet进一步调取userserviceimpl （String id）
userserviceimpl调取dao                （String id）
string转化成int和连接数据库都在dao中处理


