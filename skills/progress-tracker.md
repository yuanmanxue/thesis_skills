# SKILL: progress-tracker

name: progress-tracker

description:
Use when the user wants to track thesis progress, update status, generate report templates (especially 中期报告), or check risks for ZJU MEM thesis nodes. This skill monitors the strict ZJU workflow, warns about deadlines (especially 中期报告 and 预答辩), and ensures enough work (≥200 hours) and practical orientation.

## Overview

这是整个论文系统的进度追踪与节点预警器。核心原则：严格对齐 ZJU MEM 流程，实时记录完成情况，重点预警中期报告和预答辩风险（未通过可能延期毕业）。输出必须包含进度百分比、下一步待办、风险评估，并建议调用其他子技能。

## When to Use

- 用户说“进度更新”、“当前阶段”、“下一步安排”、“风险预警”、“中期报告进度”等
- Orchestrator 需要生成报告时自动调用
- 任何需要检查节点完成度或防范延误时

Do NOT use when: 只是生成具体内容（如文献、图表），此时用对应子技能。

## Core Pattern

1. 询问或根据上下文确认当前 ZJU 节点（选题/开题/中期报告/预答辩/盲审/答辩）。
2. 记录用户提供的已完成内容（章节、文献、图表、数据等）。
3. 计算整体进度百分比（参考工作量 ≥200 小时）。
4. 生成 ZJU 中期报告友好格式的进度报告（严格匹配用户提供的 DOCX 模板结构）。
5. 输出风险预警（特别强调中期报告图表/数据不足、预答辩通过率低的风险）。
6. 给出具体下一步待办清单，并建议调用子技能（e.g. visualization-professional 生成图表、literature-verification 补充文献）。
7. 记录版本快照（v1.0、v1.1 等）供回滚。

## Quick Reference - ZJU MEM 关键节点

- 中期报告必须包含：1.课程学习及读书报告 2.已完成工作及阶段性成果 3.与开题不符说明 4.下一步安排 5.已撰写章节（重点第 1 章或第 1-2 章 + 文献综述 + 研究目的意义 + 主要研究内容 + 三级目录），格式符合浙大规范。
- 预答辩和盲审要求高：真实数据、实用性、图表自明性、文献正规。
- 风险重点：中期报告图表/数据不足、文献未验证、进度拖延。

## Implementation / Process

1. 总结当前阶段和已完成内容。
2. 输出结构化进度报告（使用 Markdown，便于转 Word）。
3. 必须包含：
   - 当前节点完成百分比
   - 风险预警（高/中/低 + 具体后果，如“中期报告若无足够图表，预答辩风险高，可能延期”）
   - 下一步具体工作安排（重难点 + 措施）
   - 子技能调用建议
4. 添加“版本快照记录”和“用户确认后更新进度”。

## Required Background / Sub-Skills

- thesis-orchestrator（强烈推荐）
- formatting-compliance-zju（报告格式）
- visualization-professional（图表进度）
- literature-verification（文献进度）

## Common Mistakes to Avoid

- 忽略中期报告模板结构
- 没有明确的风险预警（尤其是节点延误）
- 进度计算太乐观或无依据
- 不建议调用其他子技能
- 直接写论文内容而不输出进度追踪

## Examples

Good Example:
用户：progress-tracker：当前进入中期报告，已完成文献综述
输出：进度百分比 + 中期报告结构摘要 + 风险预警（“图表部分不足，建议立即调用 visualization-professional”） + 下一步待办清单。

Bad Example (严格禁止):
直接开始写“下一步写方法论……” 而没有进度报告和预警。

## Testing / Self-Check

- 是否精确使用 ZJU 中期报告模板结构？
- 是否有清晰进度百分比和风险预警？
- 是否包含下一步待办和子技能建议？
- 是否强调实践导向和工作量要求？
- 是否绝不直接编造论文正文内容？

End of Skill
