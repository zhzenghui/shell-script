#!/bin/bash

SRCROOT="/Users/lifeng/Documents/192.168.1.113/code/Designer"
RRoot="/Users/lifeng/快盘/我收到的共享文件/lifeng@i-bejoy.com/BEJOY项目文档/设计师个人/朱伟文件-设计师/切图"


build="$SRCROOT/build"
production="$SRCROOT/production"


displayName="王阿萍"
name="wangaping"


appname="Designer"

#项目目录的名称
appdirname="Designer"










#资源文件
images_path="$RRoot/$displayName/"
resources="$SRCROOT/$appdirname/Resources"
#icon文件
icon_images_path="$RRoot/$displayName/icon/*"
icon_path="$SRCROOT/$appdirname/Images.xcassets/AppIcon.appiconset"




app_infoplist_path=${SRCROOT}/${appdirname}/${appname}-Info.plist
bundleShortVersion=$(/usr/libexec/PlistBuddy -c "print CFBundleShortVersionString" ${app_infoplist_path})



local_ipa_path="$production/$name$bundleShortVersion.ipa"
server_path="root@223.4.147.79:/data/tomcat/webapps/ipa/dsg/$name"










