# shop
实验二
1、使用 MySQL；创建数据库 db_shop，及相关表，sql放在 MySQL/db_shop.sql 里
![image](https://user-images.githubusercontent.com/49582349/165080566-1abc3d98-f00b-4ae3-96ff-b93fabc258f8.png)

2、tomcat 配置如下：
![image](https://user-images.githubusercontent.com/49582349/165080907-69d728f2-a7bd-4468-873d-c47f9e91429c.png)

3、项目目录如下所示：
![image](https://user-images.githubusercontent.com/49582349/165081150-52889869-d9a7-44f4-a058-0e588eb6b0e0.png)

com.shop.entity： 中的是一些JavaBean，部分与数据库的表对应
com.shop.dao 中的是数据库相关的操作, 使用 jdbc 连接数据库
com.shop.service：相关service
com.shop.utils： 一些工具类
com.shop.web ：对应的 servlet

\web\pages：相关页面，jsp
\web\static：相关静态文件
\web\WEB-INF\lib：相关依赖
\web\WEB-INF\web.xml：相关的映射关系
