# SKILL: defense-prep

name: defense-prep

description:
Use when the user needs preparation for pre-defense (预答辩), blind review (盲审), or final defense in ZJU MEM thesis process. This skill generates PPT outlines, anticipates common questions (especially data credibility, AI ethics, practical value), provides answer strategies, and simulates reviewer mode to increase passing rate for difficult stages like 中期报告 and 预答辩.

## Overview

这是整个论文系统的答辩准备器。核心原则：针对 ZJU MEM 实践导向论文，重点防范预答辩/盲审常见风险（数据真实性、实用性不足、AI 工具使用伦理、格式不规范）。输出帮助用户自信应对 15 分钟陈述 + 专家提问，提升通过率。

## When to Use

- 用户说“预答辩准备”、“盲审模拟”、“答辩 PPT”、“常见问题”、“模拟问答”、“答辩策略”等
- 中期报告通过后或盲审前需要准备时
- Orchestrator 生成报告后需要答辩把关时

Do NOT use when: 只是修订正文、生成图表或 brainstorm 初始想法（此时用对应子技能）。

## Core Pattern

1. 确认当前阶段（中期报告后/预答辩/盲审）。
2. 生成预答辩 PPT 提纲（15 分钟结构：研究背景、问题、方法、数据分析、成果、不足与展望）。
3. 模拟常见问题（数据可信度、AI 伦理、实践贡献、与开题不符等）并提供简洁回答要点（客观、数据支撑、实践价值）。
4. 输出答辩策略（时间控制、应对追问、PPT 设计建议）。
5. 强制添加“答辩准备检查清单”（数据真实性、图表自明性、文献正规、实用性体现）。

## Quick Reference - ZJU MEM 答辩重点

- 预答辩需提交符合浙大规范的论文终稿、PPT（15 分钟陈述 + 提问）。
- 常见风险：数据不真实、实用性弱、AI 使用伦理未说明、格式问题。
- 强调：工程背景、问题导向、真实数据、成果可行可鉴、对创业公司质量管理的借鉴价值。
- 盲审双盲：匿名提交，重点考察内容质量。

## Implementation / Process

1. 了解用户当前进度和已有材料（章节、图表、数据）。
2. 输出 PPT 提纲（建议 10-15 页：标题、背景、文献、方法、数据、结果、讨论、展望）。
3. 列出 8-12 个高概率问题 + 回答框架（用数据/图表支撑，避免绝对词）。
4. 提供应对技巧（保持冷静、引用真实数据、承认局限性并提出改进）。
5. 输出“答辩准备合规检查清单”：
   - 是否突出实践导向和 AI 赋能价值？
   - 数据/文献是否已验证？
   - PPT 是否简洁自明？
   - 是否准备好应对盲审常见挑刺？
6. 建议调用其他技能（revision-and-proofreading、visualization-professional、progress-tracker）。

## Required Background / Sub-Skills

- revision-and-proofreading
- visualization-professional（图表用于 PPT）
- formatting-compliance-zju
- thesis-orchestrator（可选）

## Common Mistakes to Avoid

- PPT 内容过多或过少（控制在 15 分钟）
- 回答问题时回避弱点或缺乏数据支撑
- 忽略 AI 伦理、数据来源可信度等 ZJU 关注点
- 直接生成完整答辩稿而不提供问题模拟和提纲
- 不提醒盲审双盲要求（匿名、格式严格）
- 准备不足导致中期报告/预答辩风险高

## Examples

Good Example:
用户：defense-prep：生成预答辩 PPT 提纲并模拟常见问题
输出：PPT 结构提纲 + 10 个常见问题列表 + 每个问题的回答要点 + 检查清单 + “建议调用 visualization-professional 优化图表”。

Bad Example (严格禁止):
直接生成完整 PPT 文字或长篇答辩稿，而不先输出提纲和问题模拟。

## Testing / Self-Check

- 是否提供清晰 PPT 提纲和问题模拟？
- 回答要点是否客观、数据支撑、实践导向？
- 是否覆盖 ZJU 预答辩/盲审常见风险？
- 是否包含检查清单和子技能建议？
- 是否绝不直接生成未经准备的完整答辩材料？

End of Skill
