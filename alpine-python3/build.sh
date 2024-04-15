#!/bin/bash

# 获取脚本所在的目录
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"

# 使用脚本所在目录作为构建上下文，构建 Docker 镜像
docker build -t yuqiong/python3:v1.0 "$SCRIPT_DIR" --network=host

