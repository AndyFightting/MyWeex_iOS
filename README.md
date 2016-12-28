# MyWeex_iOS

####如何运行

1. 下载后把 js/host.js 和 PrefixHeader.pch 文件里的 ip 地址改成你电脑的地址。
2. 进入 `MyWeex_iOS/js` 文件夹，把里面的`weex_tmp.zip`解压出一份放那里。(里面放置了图片文件，因为每次服务关闭后这个文件夹会被自动删除，所以压缩着预留一份，以后要运行的话就按这套路走一波就可以了)
3. cd 进入 js 文件夹执行命令 `weex ./ -o ./weex_tmp/h5_render/` (这个命令会把we文件转为js文件放在h5_render文件夹里)
4. 然后再执行命令 `weex ./ -o ./weex_tmp/h5_render/ --watch` (因为这个命令一开始不会把we文件转为js，所以用上面命令先转一下之后再监听文件夹里的we文件)
5. 新建一个命令窗口进入js文件夹，执行命令 `weex -s ./` 开启服务
6. Xcode 打开 `MyWeex_iOS.xcworkspace` 就可以模拟器运行了，证书描述文件等配置好后也可以真机运行。对we文件修改后会自动转为js文件，运行就能看到效果了。

####手机截屏
![](https://github.com/AndyFightting/MyWeex_iOS/blob/master/image.png)
