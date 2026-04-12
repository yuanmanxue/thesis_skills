# SKILL: thesis-final-assembly

name: thesis-final-assembly

description:
Use when the user or orchestrator needs to assemble the final complete thesis document or a major report (e.g. full paper, 中期报告 final version). This skill collects outputs from all other skills, assembles them into a single, well-structured document with proper order, table of contents, front matter, and ZJU formatting.

## Overview

这是整个论文系统的最终组装器。核心原则：把所有已完成部分（章节、摘要、参考文献、图表、致谢等）一次性整合成符合浙大规范的完整文档。只组装已有内容，不生成新正文。

## When to Use

- 用户说“生成完整论文”、“组装最终版本”、“中期报告最终文档”、“完整论文输出”等
- 论文接近完成，需要一次性打包时
- Orchestrator 在最后阶段需要输出完整文件时

Do NOT use when: 还需要生成新章节、修订或分析（此时先调用对应子技能）。

## Core Pattern

1. 从 thesis-orchestrator 获取当前论文所有已完成部分列表。
2. 严格按照 ZJU MEM 论文标准结构组装：
   - 封面
   - 独创性声明 & 版权授权书
   - 中英文摘要 + 关键词
   - 目录（自动生成）
   - 正文章节（1~n 章）
   - 参考文献（来自 citation-management）
   - 致谢
   - 附录（如有）
3. 调用 formatting-compliance-zju 确保全局格式正确。
4. 插入所有图表（来自 visualization-professional）和引用（来自 citation-management）。
5. 输出完整 Markdown 文档（可直接转 Word）。
6. 提供“最终组装合规检查清单”（所有子技能输出是否齐全？格式是否符合浙大要求？文献是否全部验证？）。

## Quick Reference - ZJU MEM 完整论文结构

- 严格按《浙江大学工程管理硕士学位论文规范要求》：封面、声明、摘要、目录、正文、参考文献、致谢、附录。
- 中期报告也按用户提供的模板结构组装。
- 参考文献必须来自 citation-management 的 GB/T 7714 格式。

## Implementation / Process

1. 确认用户想要组装的内容（完整论文 / 中期报告最终版 / 某阶段文档）。
2. 收集所有子技能的最新输出。
3. 按标准顺序组装成单一文档。
4. 运行 formatting-compliance-zju 检查。
5. 输出完整 Markdown + 检查清单。
6. 建议调用 revision-and-proofreading 或 strict-reviewer 做最终把关。
7. 结束时询问是否需要导出特定格式或继续迭代。

## Required Background / Sub-Skills

- thesis-orchestrator（必须，提供当前状态）
- formatting-compliance-zju
- citation-management
- visualization-professional
- revision-and-proofreading（可选最终校对）
- strict-reviewer（可选最终挑刺）

## Common Mistakes to Avoid

- 组装时生成新正文内容
- 遗漏前置声明或参考文献
- 格式不调用 formatting-compliance-zju
- 不包含合规检查清单
- 直接输出未验证的文献或图表

## Examples

Good Example:
用户：thesis-final-assembly：生成中期报告最终完整文档
输出：完整 Markdown 文档（按模板 1-5 节） + 所有图表/文献已插入 + 检查清单 + “建议调用 strict-reviewer 最终审查”。

Bad Example (严格禁止):
直接生成新章节内容或未调用子技能的结果。

## Testing / Self-Check

- 是否只组装已有内容而不生成新正文？
- 结构是否完全符合 ZJU 模板？
- 是否包含所有必要部分（声明、摘要、目录、参考文献）？
- 是否有合规检查清单？
- 是否建议最终把关技能？

End of Skill
