##Step 0
若有兴趣的话可以执行我的SQL脚本生成数据库

##Step 1　

修改配置文件generatorConfig.xml
1.1 中间件位置，属性配置
1.2 数据库连接配置 
1.3 表结构和对应JAVA对象的映射


##Step 2 
cmd进入到目录中来
执行下面指令
>Java -jar mybatis-generator-core-1.3.0.jar -configfile generatorConfig.xml -overwrite
