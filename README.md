## PHP-ThinkPHP5镜像


镜像启动时判断`/var/www/html`目录是否存在`package.json`文件，如果不存在，则认为是全新初始化，会将已经安装的ThinkPHP示例项目拷贝到该目录完成启动。
