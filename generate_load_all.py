#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
生成真正包含所有 skill 内容的 load-all.md
按照 orchestrator 推荐的加载顺序组织
"""
from pathlib import Path

SKILLS_DIR = Path("skills")
LOAD_ALL_FILE = Path("load-all.md")

# 按功能层级定义加载顺序
BLOCK_1_SKILLS = [
    "thesis-orchestrator",
    "thesis-topic-manager",
    "memory-manager",
    "literature-verification",
    "formatting-compliance-zju",
    "academic-writing-style",
    "strict-reviewer",
    "revision-and-proofreading",
]

BLOCK_2_SKILLS = [
    "thesis-brainstorming",
    "methodology-design",
    "data-analysis-guide",
    "visualization-professional",
    "discussion-interpretation",
    "citation-management",
    "thesis-final-assembly",
    "progress-tracker",
    "defense-prep",
]

def read_file(path):
    with open(path, "r", encoding="utf-8") as f:
        return f.read()

HEADER = """# Load All Thesis Skills - 一键加载完整体系（17 个技能）

**使用说明**（推荐每次新会话都用这个文件加载）：

1. 在新会话（Grok / Claude / Cursor）中，复制 **第一块** 全部内容发送。
2. 等待 AI 回复「第一块加载完成，请给我第二块」后，再复制 **第二块** 发送。
3. 加载完成后，直接使用 `Orchestrator：` 命令即可驱动整个体系。

---
"""

FOOTER = """---

## 使用示例（加载完成后）

```
Orchestrator：帮我检查中期报告的第二章格式
Orchestrator：为当前论文主题进行头脑风暴
Orchestrator：生成 AI 系统架构图
Orchestrator：检索并验证质量管理相关文献
Orchestrator：模拟预答辩提问
```

## Perplexity Space 专用加载块（推荐优先使用）

**操作步骤**：

1. 在 Perplexity 新建/进入 Space
2. 把 `skills/perplexity-custom-instructions.md` 的完整内容粘贴到 **Custom Instructions** 区域
3. 再把 `skills/` 文件夹下所有 .md 文件上传到该 Space
"""

def main():
    parts = [HEADER]

    # 第一块
    parts.append("## 第一块（核心调度 + 质量控制技能）\n\n")
    for skill_name in BLOCK_1_SKILLS:
        skill_path = SKILLS_DIR / f"{skill_name}.md"
        if skill_path.exists():
            content = read_file(skill_path)
            parts.append(f"<!-- === {skill_name} START === -->\n\n")
            parts.append(content.strip())
            parts.append(f"\n\n<!-- === {skill_name} END === -->\n\n")
        else:
            parts.append(f"<!-- WARNING: {skill_name}.md not found -->\n\n")

    parts.append("---\n\n")

    # 第二块
    parts.append("## 第二块（内容生成 + 格式组装 + 项目管理技能）\n\n")
    for skill_name in BLOCK_2_SKILLS:
        skill_path = SKILLS_DIR / f"{skill_name}.md"
        if skill_path.exists():
            content = read_file(skill_path)
            parts.append(f"<!-- === {skill_name} START === -->\n\n")
            parts.append(content.strip())
            parts.append(f"\n\n<!-- === {skill_name} END === -->\n\n")
        else:
            parts.append(f"<!-- WARNING: {skill_name}.md not found -->\n\n")

    parts.append(FOOTER)

    with open(LOAD_ALL_FILE, "w", encoding="utf-8") as f:
        f.write("".join(parts))

    total = len(BLOCK_1_SKILLS) + len(BLOCK_2_SKILLS)
    print(f"load-all.md generated with {total} skills")

if __name__ == "__main__":
    main()
