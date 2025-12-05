#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# 生成静态文件
hugo

# 进入public文件夹
cd public

# 添加变更
git add .

# 提交
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
    msg="$*"
fi
git commit -m "$msg"

# 推送到GitHub Pages仓库
git push origin main

# 回到项目根目录
cd ..