#!/bin/bash

# 设置随机提交内容
commit_message="Auto-commit: $(date) - $(openssl rand -hex 4)"

# 拉取最新代码，避免冲突
git pull origin main

# 创建一个新的空文件，修改时间以产生更改
touch "auto_commit_$(date +%Y%m%d%H%M%S)"

# 添加所有更改并提交
git add -A
git commit -m "$commit_message"

# 推送到远程仓库
git push origin main
