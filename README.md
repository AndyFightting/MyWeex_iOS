# MyWeex_iOS
MyWeex_iOS
####如何运行

1. 把we文件里和PrefixHeader文件里的ip地址改成你电脑的地址。
2. 进入 `MyWeex_iOS/js` 文件夹，把里面的`weex_tmp.zip`解压出一份放那里。(里面我放置了图片文件)
3. cd 进入 js 文件夹执行命令 `weex ./ -o ./weex_tmp/h5_render/` (这个命令会把we文件转为js文件放在h5_render文件夹里)
4. 然后再执行命令 `weex ./ -o ./weex_tmp/h5_render/ --watch` (因为这个命令一开始不会把we文件转为js，所以用上面命令先转一下之后再监听文件夹里的we文件)
5. 新建一个命令窗口进入js文件夹，执行命令 `weex -s ./` 开启服务
6. Xcode 打开 `MyWeex_iOS.xcworkspace` 就可以模拟器运行了，证书描述文件等配置好后也可以真机运行。
