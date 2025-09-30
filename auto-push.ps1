# 自动推送脚本
# 使用方法：在PowerShell中运行 ./auto-push.ps1

# 添加所有更改
git add .

# 提交更改，若无更改则跳过
git diff --cached --quiet
if ($LASTEXITCODE -ne 0) {
    git commit -m "自动推送：配置GitHub Actions自动编译"
}

# 推送到远程仓库
git push
