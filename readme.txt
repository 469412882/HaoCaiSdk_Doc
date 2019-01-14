apk接入sdk步骤：

1、复制project工程
	 注意增加smali文件夹 smali_classes2
   注意：遇到冲突的则使用宿主文件，不覆盖
   
	                     
2、手动修改res/values文件
	 修改分类ID，修改co/bxvip/sdk/R$ 下的R文件
    
	 
	                     
3、修改application
   将父类修改为 .super Lcom/jzb/haocai/haocaisdk/App;
   注意：将整个文件的父类全部修改
   
4、修改apktool.yml
	 在apktool.yml文件中修改unknownFiles
	 
5、修改Manifest文件
   1）添加权限配置
   2）添加极光和sdk配置 并去除原有的启动入口
   3）修改包名
   4）修改极光配置key
   
6、修改app名
   修改Manifest中指定的res/values/strings.xml中app_name的值，最好检索一下
   
7、修改logo
   修改Manifest中指定的res/mipmap/logo.png 注意：如果有多个适配文件，都要修改
   
   
   android:visibility="gone"

   