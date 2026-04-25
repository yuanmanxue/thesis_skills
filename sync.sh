#!/bin/bash
###
 # @Author: 袁满学 yuanmanxue@nnuo.com
 # @Date: 2026-04-11 20:40:26
 # @LastEditors: 袁满学 yuanmanxue@nnuo.com
 # @LastEditTime: 2026-04-11 20:40:37
 # @FilePath: /thesis_skills/sync.sh
 # @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
### 
# Thesis Skills 同步脚本

echo "=== Thesis Skills 同步脚本 ==="

# 拉取最新内容
echo "1. 正在 git pull..."
git pull origin main

echo "2. 正在创建 symlink（可选，根据你的工具选择）"

# Cursor
if [ -d ".cursor" ]; then
  ln -sf "$(pwd)/skills" .cursor/skills
  echo "✓ Cursor skills 已链接"
fi

# Claude
if [ -d ".claude" ]; then
  ln -sf "$(pwd)/skills" .claude/skills
  echo "✓ Claude skills 已链接"
fi

echo ""
echo "✅ 同步完成！"
echo "现在可以直接使用 Orchestrator 命令了。"
echo "使用示例：Orchestrator：当前进入中期报告阶段..."