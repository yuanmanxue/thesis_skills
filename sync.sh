#!/bin/bash
###
 # @Author: 袁满学 yuanmanxue@nnuo.com
 # @Date: 2026-04-12 11:40:26
 # @LastEditors: 袁满学 yuanmanxue@nnuo.com
 # @LastEditTime: 2026-04-25 11:21:51
 # @FilePath: /thesis_skills/sync.sh
 # @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
### 
# =============================================
# Thesis Skills 同步脚本 - 修复版（2026.4.24）
# 作者：Grok 协助优化
# 功能：把 skills/ 里的 15 个 .md 文件分别软链接到各工具目录
# =============================================

echo "=== Thesis Skills 同步脚本（修复版） ==="

# 1. 拉取最新代码
echo "1. 正在 git pull..."
git pull origin main

# 2. 清理旧链接（防止重复）
rm -f .cursor/rules/*.md .claude/skills/*.md grok/skills/*.md 2>/dev/null || true

echo "2. 正在创建单个文件软链接..."

# Cursor → 使用 .cursor/rules/
if [ -d ".cursor/rules" ]; then
  for f in skills/*.md; do
    [ -e "$f" ] && ln -sf "../../$f" ".cursor/rules/$(basename "$f")"
  done
  echo "✅ Cursor (.cursor/rules) 已同步 ${#} 个文件"
fi

# Claude
if [ -d ".claude/skills" ]; then
  for f in skills/*.md; do
    [ -e "$f" ] && ln -sf "../../$f" ".claude/skills/$(basename "$f")"
  done
  echo "✅ Claude 已同步 ${#} 个文件"
fi

# Grok
if [ -d "grok/skills" ]; then
  for f in skills/*.md; do
    [ -e "$f" ] && ln -sf "../../$f" "grok/skills/$(basename "$f")"
  done
  echo "✅ Grok 已同步 ${#} 个文件"
fi

echo ""
echo "🎉 同步完成！所有 skill 文件已正确软链接。"
echo "以后修改 skills/ 里的文件，其他工具会自动生效。"