# SKILL: revision-and-proofreading

name: revision-and-proofreading

description:
Use when the user needs to revise, polish, proofread, simulate peer/blind review, or integrate feedback for the ZJU MEM thesis. This skill focuses on multi-round revision, plagiarism simulation (查重意识), strict reviewer mode (模拟预答辩/盲审挑刺), and ensures compliance with ZJU rules, practical orientation, and high passing rate for 中期报告 and 预答辩.

## Overview

这是整个论文系统的修订与校对器。核心原则：多轮迭代、严格挑刺、提升通过率。特别针对 ZJU MEM 实践导向论文：检查实用性、数据真实性、逻辑严谨性、格式规范性，避免幻觉和低级错误。支持盲审模拟（双盲思维）。

## When to Use

- 用户说“修订”、“校对”、“改错”、“模拟盲审”、“查重模拟”、“整合反馈”、“挑刺”等
- 任何章节或报告草稿完成后需要优化时
- 准备中期报告、预答辩、盲审材料时
- Orchestrator 生成内容后需要最终把关时

Do NOT use when: 只是 brainstorm 初始想法、生成新内容或格式调整（此时用对应子技能）。

## Core Pattern

1. 接收用户提供的原文或具体段落/章节。
2. 分层检查：
   - 内容层面：逻辑漏洞、数据真实性、实用性不足、与主题脱节
   - 学术规范：口语/绝对词、文献幻觉、论证不严谨
   - 格式层面：浙大模板结构、图表自明性、GB/T 7714、字数要求
   - 盲审/预答辩风险：常见问题（数据可信度、AI 使用伦理、实践贡献）
3. 输出结构化修订报告：
   - 问题清单（按严重程度分类：致命/重要/建议）
   - 具体修改建议（逐点）
   - 改写示例（仅针对问题点，不重写整章）
   - 查重模拟意识提醒（避免大段 AI 生成句式）
4. 提供修订版本（仅修改部分） + 整体通过率预估。
5. 强制添加“修订合规检查清单”和“下一步建议”（调用其他子技能）。

## Quick Reference - ZJU MEM 修订重点

- 中期报告必须真实反映已完成工作，重点第 1-2 章 + 三级目录
- 预答辩/盲审常见风险：数据不真实、实用性弱、格式不规范、文献不正规
- 工作量要求：≥200 小时，主体工作独立完成
- 最终输出必须严谨、实用、可行可鉴

## Implementation / Process

1. 确认用户提供的具体内容和修订目标（中期报告/某章/整体）。
2. 执行多维度检查（内容、规范、风险）。
3. 输出问题清单 + 修改建议 + 示例。
4. 给出修订后局部版本（只改问题点）。
5. 输出“修订自查清单”：
   - 逻辑是否严谨？
   - 数据/文献是否已验证？
   - 格式是否符合浙大模板？
   - 是否降低盲审/预答辩风险？
6. 建议调用其他技能（formatting-compliance-zju、academic-writing-style、progress-tracker 等）。

## Required Background / Sub-Skills

- formatting-compliance-zju
- academic-writing-style
- literature-verification
- thesis-orchestrator（可选）

## Common Mistakes to Avoid

- 直接大规模重写整章而不列问题清单
- 忽略盲审/预答辩挑刺点（数据可信度、AI 伦理）
- 不提醒查重风险（大段 AI 句式）
- 输出过于温和而不严格
- 修改后仍保留原问题
- 直接生成新内容而不基于用户原文

## Examples

Good Example:
用户：revision-and-proofreading：修订这段中期报告第 2 节
输出：问题清单（3 个致命问题、2 个建议） + 具体修改点 + 局部改写示例 + 自查清单 + “建议调用 formatting-compliance-zju 进一步格式化”。

Bad Example (严格禁止):
直接重写整段文字而不输出问题分析和检查清单。

## Testing / Self-Check

- 是否先输出问题清单而非直接重写？
- 检查是否覆盖内容、规范、盲审风险？
- 修改建议是否具体可操作？
- 是否包含自查清单和子技能推荐？
- 是否绝不直接生成全新大段内容？

End of Skill
