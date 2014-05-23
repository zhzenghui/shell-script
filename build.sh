#!/bin/bash


source info.sh 




mkdir $production
echo "编译项目到build目录"
echo "开始编译"

cd ..
xcodebuild clean  CONFIGURATION_BUILD_DIR="$build"

xcodebuild -configuration Release -workspace "$SRCROOT/$appname.xcworkspace"  -scheme "$appname" CONFIGURATION_BUILD_DIR="$build"


echo "生成成功"



