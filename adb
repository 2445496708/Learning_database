adb: Android Debug Bridge， 调试桥

通过adb我们可以在Eclipse中方便通过DDMS来调试Android程序 
adb是android sdk里的一个工具, 用这个工具可以直接操作管理android模拟器或者真实的android设备(如G1手机).

主要功能：
  * 运行设备的shell(命令行)
  * 管理模拟器或设备的端口映射
  * 计算机和设备之间上传/下载文件
  * 将本地apk软件安装至模拟器或android设备
 
常用命令
 1. 查看设备 
  *adb devices[1] 
 这个命令是查看当前连接的设备, 连接到计算机的android设备或者模拟器将会列出显示
 
 2. 安装软件
  *adb install <apk文件路径>
这个命令将指定的apk文件安装到设备上

 3. 卸载软件
  *adb uninstall <软件名>
  *adb uninstall -k <软件名>
如果加 -k 参数,为卸载软件但是保留配置和缓存文件.

 4. 登录设备shell
  *adb shell
  *adb shell <command命令>
这个命令将登录设备的shell.
后面加<command命令>将是直接运行设备命令, 相当于执行远程命令

 5. 从电脑上发送文件到设备
  *adb push <本地路径> <远程路径>
用push命令可以把本机电脑上的文件或者文件夹复制到设备(手机)

6. 从设备上下载文件到电脑
*adb pull <远程路径> <本地路径>
用pull命令可以把设备(手机)上的文件或者文件夹复制到本机电脑
7. 显示帮助信息
*adbhelp
这个命令将显示帮助信息
删除Android系统Rom自带的软件
Android系统没有卸载Rom自带软件的功能.可能有些同学很想删除废了武功的Youtube,想删除墙那边的Twitter.
加上Android的快捷方式没法修改没法自己排序没法分页.
安装的程序太多就会发现原来找到自己想要的东西很难.
综上所述,我觉得告知各位菜鸟同学如何删除自带的程序是很有必要的一件事情.
1.确定手机root了,取得了root权限才能删除系统文件呀.
2.下载Android_db.rar,解压到%windir/%System32下.
3.手机连接数据线,在电脑上打开cmd,然后输入命令
adb remount
adb shell
su
执行完成之后,你会看到:
* daemon not running. starting it now *
* daemon started successfully *
4.接着就是Linux命令行模式了,输入
cd system/app
你会发现没啥变化,然后输入ls回车.
这时候列表显示了system/app里面的所有文件,也就是Rom集成的一些软件了.
5.开始删除吧.比如删除Youtube,他的文件名是Youtube.odex和Youtube.apk
我们要删除这2个文件,敲入以下命令:
adb shell rm -f system/app/Youtube.odex
adb shell rm -f system/app/Youtube.apk
