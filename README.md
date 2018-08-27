# Ailen-Management-UI
### 项目说明
+ 软件名称：Ailen-Management-UI
+ 版本号：2.0.0
+ 开发者：www.Ailen.com
+ 语言：HTML/CSS/JS/VUE/ELEMENT-UI
+ 功能：提供一整套用户交互UI用于云平台管理和维护
+ 优点：与服务端分离,便于维护升级
+ 缺点：需独立部署,首次加载慢等特点
+ 开源协议：Apache License Version 2.0 http://www.apache.org/licenses/

### 技术选型
+ VUE 前端MVVM框架
+ Element UI 饿了么基于VUE的前端框架
+ NPM 包管理工具
+ WEB PACK 打包工具
+ NodeJS 用于基础环境及服务端渲染等

### 项目开发与调试
###### 项目采用NPM管理,常用的基本命令如下：
+ 安装项目: npm install
+ 运行项目: npm run dev
+ 打包项目: npm run build (查看报告请追加--report)

### 项目打包运行
+ NPM打包方式的项目不支持目录浏览,其基本部署请使用nginx指定打包后文件所在路径,如:
```
server {
        listen 80;
        server_name admin.Ailen.com;

        error_page 500 502 503 504 /50x.html;
        location = /50x.html {
          root html;
        }

        root /project/Ailen-Management-UI/dist;
        index index.html;

        location / {
          try_files $uri $uri/ @router;
          index index.html;
        }

        location @router {
          rewrite ^.*$ /index.html last;
        }
}

```
+ 项目采用前后端分离开发,打包后可以直托管于腾讯云COS阿里云OSS等对象存储中即可运行 
