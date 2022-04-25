# shop
实验二

一、项目目录如下所示：

![image](https://user-images.githubusercontent.com/49582349/165081150-52889869-d9a7-44f4-a058-0e588eb6b0e0.png)

com.shop.entity： 是相关JavaBean

com.shop.dao 中的是数据库相关的操作

com.shop.service：相关service

com.shop.utils： 一些工具类

com.shop.web ：对应的 servlet

\src\jdbc.properties：数据库的相关配置文件，账户密码等。

\web\pages：相关页面，jsp

\web\static：相关静态文件

\web\WEB-INF\lib：相关依赖

\web\WEB-INF\web.xml：相关的映射关系

具体内容项目代码里有注释

二、下载代码到本地，使用软件：IDEA

1、使用 MySQL；创建数据库 db_shop，及相关表，sql放在 MySQL/db_shop.sql 里

![image](https://user-images.githubusercontent.com/49582349/165080566-1abc3d98-f00b-4ae3-96ff-b93fabc258f8.png)

2、tomcat 配置：

![image](https://user-images.githubusercontent.com/49582349/165084203-650158a4-722a-467f-87c1-4d3f2774f0c5.png)

导入\web\WEB-INF\lib：下的相关依赖

然后启动项目即可
