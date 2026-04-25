#!/bin/bash
###
 # @Author: 袁满学 yuanmanxue@nnuo.com
 # @Date: 2026-04-12 11:40:26
 # @LastEditors: 袁满学 yuanmanxue@nnuo.com
 # @LastEditTime: 2026-04-25 11:41:43
 # @FilePath: /毕业论文/thesis_skills/sync.sh
 # @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
### 
# Thesis Skills 同步脚本 - 修复版（支持 Perplexity Master）
#!/bin/bash
echo "=== Thesis Skills 同步脚本（2026.4.24 最终版） ==="
git pull origin main

# 清理可能残留的嵌套文件夹
rm -rf .cursor/rules/skills .claude/skills/skills grok/skills/skills 2>/dev/null || true

# 同步所有 .md 文件为软链接
for f in skills/*.md; do
  [ -e "$f" ] && ln -sf "../../$f" ".cursor/rules/$(basename "$f")"
  [ -e "$f" ] && ln -sf "../../$f" ".claude/skills/$(basename "$f")"
  [ -e "$f" ] && ln -sf "../../$f" "grok/skills/$(basename "$f")"
done

echo "🎉 同步完成！全部 skills 已全部软链接"