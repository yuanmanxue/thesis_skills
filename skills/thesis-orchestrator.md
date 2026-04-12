# SKILL: thesis-orchestrator

name: thesis-orchestrator

description:
Use when the user mentions any ZJU MEM thesis stage, progress update, report generation (especially 中期报告), "当前进度"、"下一步"、"生成报告"、"整体流程"、"Orchestrator" 等。此技能是整个论文 Skills 系统的中央调度器，负责统筹所有子技能。

## Overview

此技能是总指挥中心。核心原则：自动判断当前 ZJU 节点、调用合适子技能（必须先调用 literature-verification 验证文献）、严格按用户提供的 ZJU 中期报告模板输出、生成进度 + 风险预警（防范中期报告/预答辩未通过导致延期）、确保实践导向、防幻觉、符合浙大规范。

## When to Use

- 用户说“中期报告”、“开题报告”、“进度更新”、“下一步安排”、“生成报告”、“Orchestrator”等
- 需要整合多个子技能结果时

Do NOT use when: 只需执行单一任务（此时直接调用对应子技能）。

## Core Pattern

1. 判断当前 ZJU 阶段（选题/开题/中期报告/预答辩/盲审/答辩）。
2. 调用 progress-tracker 获取进度和风险预警。
3. 根据阶段调用子技能：
   - 文献 → literature-verification（必须先验证）
   - 图表 → visualization-professional
   - 格式 → formatting-compliance-zju
   - 数据/方法 → data-analysis-guide + methodology-design
   - 思路 → thesis-brainstorming
   - 写作风格 → academic-writing-style
   - 修订 → revision-and-proofreading
   - 严格审查 → strict-reviewer
   - 引用管理 → citation-management
   - 讨论 → discussion-interpretation
   - 答辩 → defense-prep
   - 最终组装 → thesis-final-assembly
4. 严格按 ZJU 中期报告模板输出完整结构（1-5 节）。
5. 添加文献验证提醒、格式自查、版本快照。
6. 结束时询问是否立即调用具体子技能。

## Quick Reference

- 中期报告重点：已写章节（第 1-2 章 + 三级提纲）、真实数据、实用性、图表自明性。
- 风险预警重点：中期报告图表/数据不足、文献未验证、预答辩通过率。
- 所有子技能必须按各自规则执行（防幻觉、浙大规范、实践导向）。

## Implementation / Process

1. 确认当前阶段和已完成内容（若不确定则询问）。
2. 调用 progress-tracker + 必要子技能。
3. 按中期报告模板精确输出（Markdown 便于转 Word）。
4. 必须包含进度百分比、风险预警（高/中/低 + 后果）、下一步待办、子技能建议。
5. 添加“用户手动验证文献”和“浙大格式自查”。

## Required Background / Sub-Skills

（必须全部已加载）

- literature-verification
- formatting-compliance-zju
- visualization-professional
- progress-tracker
- data-analysis-guide
- methodology-design
- thesis-brainstorming
- academic-writing-style
- revision-and-proofreading
- defense-prep
- citation-management
- strict-reviewer
- thesis-final-assembly
- discussion-interpretation

## Common Mistakes to Avoid

- 不按 ZJU 中期报告模板结构输出
- 忽略文献验证或风险预警
- 直接编造内容而不调用子技能
- 输出不绑定论文主题
- 无版本快照或子技能调用建议

## Examples

Good: 用户说“进入中期报告，已完成文献综述”。输出：完整模板结构 + 填充内容 + 调用子技能生成缺失部分 + 预警 + 下一步。

Bad: 直接写正文而不使用模板或调用子技能。

## Testing / Self-Check

- 输出是否精确匹配 ZJU 中期报告模板（1-5 节）？
- 是否调用了合适子技能并包含验证/预警？
- 是否有进度报告和下一步安排？
- 是否保持实践导向和主题一致？
- 是否绝不直接编造未经子技能验证的内容？

End of Skill
