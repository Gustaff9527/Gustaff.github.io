# Gustaff.github.io
# 1. 创建新文章
hugo new posts/$(date +%Y-%m-%d)-学习主题.md

# 2. 编辑文章（用VS Code或其他编辑器）
code content/posts/$(date +%Y-%m-%d)-学习主题.md

# 3. 本地预览
hugo server -D
# 浏览器访问 http://localhost:1313

# 4. 发布
./deploy.sh "更新：学习主题笔记"