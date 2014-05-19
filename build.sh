#!/bin/bash

SRCROOT="/Users/lifeng/Documents/192.168.1.113/code/Designer"

RRoot="/Users/lifeng/快盘/我收到的共享文件/lifeng@i-bejoy.com/BEJOY项目文档/设计师个人/朱伟文件-设计师/切图"



DisplayName="王阿萍"

#资源文件
images_path="$RRoot/$DisplayName/*"
resources="$SRCROOT/Designer/Resources"
#icon文件
icon_images_path="$RRoot/$DisplayName/icon/*"
icon_path="$SRCROOT/Designer/Images.xcassets/AppIcon.appiconset"



appdirname="Designer"
appname="Designer"
target_name=""
project_configuration=""
output_directory=""



app_infoplist_path=${SRCROOT}/${appdirname}/${appname}-Info.plist



bundleShortVersion=$(/usr/libexec/PlistBuddy -c "print CFBundleShortVersionString" ${app_infoplist_path})


echo "修改info.plist的CFBundleDisplayName"
defaults write $app_infoplist_path "CFBundleDisplayName" $DisplayName


echo "display name:"
defaults read $app_infoplist_path "CFBundleDisplayName"


echo "copy images"
cp -R $images_path $resources

echo "copy icon images"
cp -R $icon_images_path $icon_path








