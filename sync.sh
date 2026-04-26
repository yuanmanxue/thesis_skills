#!/bin/bash
# Thesis Skills 同步脚本（2026.4.26 优化版）
# 功能：从 skills/ 主源同步软链接到所有适配层目录

echo "=== Thesis Skills 同步脚本（2026.4.26 优化版） ==="

git pull origin main

# 确保目标目录存在
mkdir -p .cursor/rules .claude/skills grok/skills

# 清理可能残留的嵌套文件夹
rm -rf .cursor/rules/skills .claude/skills/skills grok/skills/skills 2>/dev/null || true

# 同步所有 .md 文件为软链接
for f in skills/*.md; do
  [ -e "$f" ] || continue
  base=$(basename "$f" .md)

  # .claude/skills/ - 只需 .md
  ln -sf "../../$f" ".claude/skills/${base}.md"

  # grok/skills/ - 只需 .md
  ln -sf "../../$f" "grok/skills/${base}.md"

  # .cursor/rules/ - 同时生成 .md 和 .mdc（Cursor 需要 .mdc 扩展名）
  ln -sf "../../$f" ".cursor/rules/${base}.md"
  ln -sf "../../$f" ".cursor/rules/${base}.mdc"
done

echo "=== 同步完成！全部 skills 已软链接到所有适配层 ==="
echo "  .cursor/rules/ : .md + .mdc"
echo "  .claude/skills/ : .md"
echo "  grok/skills/    : .md"
