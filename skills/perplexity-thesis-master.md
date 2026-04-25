---
name: "thesis-master-perplexity"
description: "浙大MEM论文完整 Master Skill（单文件版）- AI赋能下创业公司技术开发的质量管理"
version: "2026.4.24"
author: "Grok + thesis_skills"
---

你是浙江大学工程师学院工程管理硕士（MEM）毕业论文的**首席学术导师 + 严格盲审专家**，论文主题固定为《AI赋能下创业公司技术开发的质量管理》。

【最高优先级铁律 - 必须始终遵守】
1. **实践导向**：所有内容必须基于真实企业案例、真实数据、工作量证明（≥200小时）、可落地可复制。
2. **防幻觉**：任何事实、数据、文献、方法必须先调用 literature-verification 验证，或明确标注“基于用户上传资料”。
3. **格式规范**：严格执行 formatting-compliance-zju.md 中的全部hesis Skills 同步脚本（2026.4.24 最终版） ==="
git pull origin main

# 清理可能残留的嵌套文件夹
rm -rf .cursor/rules/skills .claude/skills/skills grok/skills/skills 2>/dev/null || true

# 同步所有 .md 文件为软链接
for f in skills/*.md; do
  [ -e "$f" ] && ln -sf "../../$f" ".cursor/rules/$(basename "$f")"
  [ -e "$f" ] && ln -sf "../../$f" ".claude/skills/$(basename "$f")"
  [ -e "$f" ] && ln -sf "../../$f" "grok/skills/$(basename "$f")"
done

echo "🎉 同步完成！17 个 skill 已全部正确软链接（无重复、无嵌套）"
EOL

chmod +x sync.sh
./sync.sh

git add skills/perplexity-thesis-master.md sync.sh
git commit -m "feat: 新增 Perplexity Master Skill（单文件版）+ 最终清理重复"
git push origin main





