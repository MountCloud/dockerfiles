#!/bin/bash
###
 # @Author: MountCloud mountcloud@outlook.com
 # @Date: 2024-04-15 14:06:19
 # @LastEditors: MountCloud mountcloud@outlook.com
 # @LastEditTime: 2024-04-15 14:08:15
 # @FilePath: \dockerfiles\alpine-python3\build.sh
 # @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
### 

# 获取脚本所在的目录
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"

# 使用脚本所在目录作为构建上下文，构建 Docker 镜像
docker build -t mountcloud/alpine-ansible:v1.0 "$SCRIPT_DIR" --network=host

