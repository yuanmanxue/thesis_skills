# SKILL: formatting-compliance-zju

name: formatting-compliance-zju

description:
Use when the user needs to ensure any thesis content (report, chapter, figure, table, reference) complies with Zhejiang University MEM thesis formatting rules, especially for 中期报告, 开题报告, or full thesis. This skill enforces ZJU-specific templates, GB/T 7714 citations, figure/table self-explanatory rules, and MEM practical requirements.

## Overview

这是整个论文系统的浙大格式合规守护者。核心原则：所有输出必须严格匹配浙大规范（封面、摘要、图表自明性、GB/T 7714 引用、中期报告模板结构等）。特别强调实践导向（真实数据、实用性、工作量 ≥200 小时）和工程师学院中期报告要求。

## When to Use

- 用户说“检查格式”、“调整成浙大规范”、“生成中期报告框架”、“图表自明性”、“GB/T 7714”等
- Orchestrator 或其他技能输出内容后需要格式化时
- 准备中期报告、预答辩材料、盲审论文时

Do NOT use when: 只是 brainstorm 想法或检索文献（此时用对应子技能）。

## Core Pattern

1. 明确用户当前输出需求（中期报告第几节、全文某章、图表等）。
2. 严格按浙大规则检查/重构内容：
   - 中期报告模板结构（1.课程学习及读书报告完成情况 2.已完成工作及阶段性成果 3.与开题不符说明 4.下一步安排 5.已撰写章节内容——重点含第 1 章或第 1-2 章 + 文献综述 + 研究目的意义 + 主要研究内容 + 三级目录）
   - 图表要求：自明性（图在下方带编号+图题，表在上方带编号+表题，中英对照可选）；图清晰、带标度；表用三线表。
   - 引用：严格 GB/T 7714-2015（顺序编码制或著者-出版年制，全文统一）。
   - 摘要：300-500 字，中英，突出创新与实用意义，无公式图表。
   - 章节编号（1、1.1、1.1.1 等）均按浙大规则。
3. 输出“格式检查报告” + “合规调整后版本”。
4. 添加自查清单：文献是否验证？图表是否自明？是否符合中期报告模板？

## Quick Reference - ZJU MEM 关键规范

- 图：具有自明性，编号如 图 1.1，图题置于图下方。
- 表：具有自明性，编号如 表 2.1，表题置于表上方，三线表。
- 公式：独立成行，编号右对齐。
- 章节：层次分明，用阿拉伯数字连续编号（1、1.1、1.1.1）。
- 中期报告必须包含已写章节（特别第 1-2 章 + 三级提纲），格式符合浙大规范。
- 论文强调工程背景、问题导向、真实数据、实用性。

## Implementation / Process

1. 接收用户内容或需求。
2. 检查当前格式问题（列出不合规点）。
3. 重构输出合规版本（使用 Markdown 便于转 Word）。
4. 必须输出“浙大格式自查清单”：
   - 图表是否自明性？
   - 引用是否 GB/T 7714？
   - 中期报告结构是否完整？
   - 是否绑定实践导向主题？
5. 结束时建议是否调用其他技能（如 literature-verification 验证引用）。

## Required Background / Sub-Skills

- literature-verification（引用必须先验证）
- thesis-orchestrator（可选）

## Common Mistakes to Avoid

- 输出不按中期报告 DOCX 模板结构
- 图表无自明性或编号错误
- 引用格式不统一或无链接
- 忽略浙大页眉页脚、摘要字数、独创性声明等
- 直接写正文而不先检查格式

## Examples

Good Example:
用户：formatting-compliance-zju：把这段文字调整成中期报告第 5 节格式
输出：先列检查点 → 然后给出完整合规的第 5 节结构 + 已调整内容。

Bad Example (严格禁止):
直接改写内容而不输出格式检查报告和自查清单。

## Testing / Self-Check

- 输出是否精确匹配用户提供的 ZJU 中期报告模板结构？
- 图表/引用是否符合自明性和 GB/T 7714？
- 是否包含格式自查清单？
- 是否保持实践导向和主题一致？
- 是否绝不直接编造新内容，只做格式调整？

End of Skill
