# SKILL: thesis-brainstorming

name: thesis-brainstorming

description:
Use when the user needs to brainstorm, refine research questions, explore innovation points, clarify research significance, or generate ideas for the ZJU MEM thesis. This skill dynamically references the current research topic from thesis-topic-manager, focuses on practical engineering management thinking, problem-oriented ideas, and ensures alignment with ZJU MEM requirements (real data, practical value, AI/Agent applicability).

## Overview

这是整个论文系统的头脑风暴与问题提炼器。核心原则：基于 `thesis-topic-manager` 提供的动态研究主题，实践导向、问题驱动，帮助用户从模糊想法提炼成清晰、可操作的研究问题和创新点。强调工程背景、真实数据支撑、实用成果，并为后续技能提供清晰输入。所有 brainstorm 必须紧扣当前论文主题（由 topic-manager 动态提供），绝不使用硬编码的固定主题。

## When to Use

- 用户说“brainstorm”、“头脑风暴”、“提炼研究问题”、“创新点”、“研究意义”、“主要研究内容”等
- 开题报告、中期报告准备阶段需要澄清思路时
- Orchestrator 或其他技能需要前期想法支持时

Do NOT use when: 需要正式写作、格式调整、数据分析或文献验证（此时用对应子技能）。

## Core Pattern

1. 理解用户当前论文阶段和已有想法（主题、已知问题、数据来源等）。
2. 生成 brainstorm 输出：
   - 研究对象与问题提炼（基于 topic-manager 当前主题的核心痛点 + 解决方案）
   - 研究意义（理论意义 + 应用价值，对实践场景的启示）
   - 主要研究内容与创新点（紧扣当前主题方向）
   - 可能的技术路线或框架建议
3. 提供多种 brainstorm 选项（2-4 种思路），让用户选择或迭代。
4. 输出结构化列表，并建议下一步（调用 literature-verification 找支撑文献、methodology-design 选方法等）。
5. 强制添加“ brainstorm 合规检查清单”（是否问题导向？是否实践实用？是否支持真实数据？是否符合 ZJU MEM 要求？）。

## Quick Reference - ZJU MEM 要求

- 问题导向：密切结合工程活动/技术/要素的管理需求。
- 成果实用：具有难度、深度、先进性，可行可鉴，对类似问题有借鉴价值。
- 实践导向：真实数据、AI/Agent 场景、创业公司实际应用。
- 创新点：紧扣 thesis-topic-manager 提供的当前主题，挖掘具有实践价值的创新方向。

## Implementation / Process

1. 确认用户具体需求和当前论文上下文。
2. 输出 brainstorm 结构：
   - 核心研究问题（可操作、可测量）
   - 研究意义（应用性价值为主）
   - 主要研究内容（分模块）
   - 潜在创新点（2-3 个）
   - 风险与可行性初步评估
3. 提供迭代提示：“你喜欢哪个方向？需要深化哪个部分？”
4. 结束时建议调用其他技能（literature-verification、methodology-design、progress-tracker 等）。
5. 所有输出保持中性 brainstorm 风格，不直接形成正式论文文字。

## Required Background / Sub-Skills

- thesis-topic-manager（必须，获取当前主题）
- literature-verification（后续验证想法）
- methodology-design（方法适配）
- data-analysis-guide（数据思路）
- thesis-orchestrator（可选）

## Common Mistakes to Avoid

- 直接输出正式论文章节或完整段落
- 想法太理论化而缺乏实践/创业公司场景
- 忽略真实数据和实用价值
- 不提供多种选项让用户选择
- 无合规检查清单或不绑定 ZJU MEM 要求
- 生成泛化想法而不紧扣 thesis-topic-manager 提供的当前主题

## Examples

Good Example:
用户：thesis-brainstorming：提炼研究问题和创新点
输出：列出 2-4 个研究问题建议 + 意义分析 + 创新点列表 + 检查清单 + “推荐调用 literature-verification 验证相关文献”。

Bad Example (严格禁止):
直接输出“第一章 引言 …… 本研究创新性地提出……” 而不是 brainstorm 思路。

## Testing / Self-Check

- 输出是否为 brainstorm 思路而非正式论文内容？
- 是否问题导向、实践实用、紧扣 thesis-topic-manager 提供的当前主题？
- 是否提供多种选项和迭代建议？
- 是否包含合规检查清单和子技能推荐？
- 是否绝不直接生成正文章节？

End of Skill
