#!/bin/bash
echo "生成静态网站..."
hugo

echo "将源码推送到GitHub仓库..."
git add .
git commit -m "更新内容: $(date)"
git push origin main

echo "✅ 完成！Vercel将自动从GitHub拉取更新并发布。"
echo "网站地址：https://gustaff-github-io.vercel.app"