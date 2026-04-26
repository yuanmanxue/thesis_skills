# SKILL: methodology-design

name: methodology-design

description:
Use when the user needs to design or select research methodology for the ZJU MEM thesis (topic dynamically provided by thesis-topic-manager). This skill focuses on practical engineering management methods (DMAIC, PDCA, Six Sigma, system dynamics, etc.), internal comparison for selection, and ensures the chosen method fits the practical, data-driven, AI/Agent scenario. Do not write full comparison tables in the final paper.

## Overview

这是整个论文系统的方法论设计器。核心原则：基于 `thesis-topic-manager` 提供的动态研究主题，实践导向，只在内部调研对比后推荐**最适合的一种方法**用于论文（不在正文中写大篇对比），强调真实数据、场景适配、浙大规范（真实数据支撑、实用性、图表自明性）。

## When to Use

- 用户说“方法论设计”、“研究方法”、“选择方法”、“DMAIC”、“质量管理方法”、“方法比较”等
- 需要为中期报告、研究方案章节准备方法论时
- Orchestrator 或其他技能要求方法支持时

Do NOT use when: 只是数据分析执行或纯格式调整（此时用对应子技能）。

## Core Pattern

1. 明确用户当前需求（整体方法论、具体框架、方法选择）。
2. 内部调研常见质量管理方法（DMAIC、PDCA、六西格玛、系统动力学、案例研究、混合方法等）。
3. 基于 thesis-topic-manager 提供的当前论文主题进行适配性评估。
4. 推荐**最适合的一种方法** + 简要理由（例如“推荐 DMAIC，因其 Define-Measure-Analyze-Improve-Control 闭环结构适合 AI 质量管理反馈优化”）。
5. 输出详细实施步骤（分阶段、可与 data-analysis-guide 结合）。
6. 生成图表输入建议（流程图、因果循环图、架构图，供 visualization-professional 使用）。
7. 强制添加“方法论合规检查清单”（真实数据、实用性、浙大规范）。

## Quick Reference - 实践导向重点

- 优先 DMAIC（定义-测量-分析-改进-控制），适合质量管理闭环和 AI 干预效果评估。
- PDCA（计划-执行-检查-行动）作为补充或备选。
- Six Sigma 工具（Pareto、鱼骨图、控制图）可嵌入。
- 方法必须支持真实企业数据和 AI Agent 场景。
- 输出支持 ZJU 中期报告要求（研究方法、技术路线、可行性分析）。

## Implementation / Process

1. 确认当前阶段和已有内容（数据、文献等）。
2. 列出 2-4 种候选方法 + 内部简要适配评估（不在输出中展开大对比）。
3. 推荐一种最佳方法 + 详细理由（绑定 thesis-topic-manager 提供的当前主题场景）。
4. 输出分步实施指南 + 与数据分析的结合点。
5. 提供图表/流程建议（Mermaid 或 Python 输入）。
6. 输出“方法论合规检查清单”：
   - 是否只推荐一种方法？
   - 是否强调真实数据和实用性？
   - 是否准备好与 visualization-professional 结合？
7. 建议调用其他技能（data-analysis-guide 执行、formatting-compliance-zju 格式化）。

## Required Background / Sub-Skills

- literature-verification（方法相关文献）
- data-analysis-guide（数据支撑）
- visualization-professional（流程/架构图）
- formatting-compliance-zju（最终输出）
- thesis-orchestrator（可选）

## Common Mistakes to Avoid

- 在论文正文中写大篇方法对比表格（只内部选择）
- 推荐方法与 thesis-topic-manager 提供的当前研究主题场景脱节
- 忽略真实数据可行性和工作量要求
- 生成泛化方法而不提供具体步骤
- 无图表输入建议或不提醒浙大自明性
- 直接写论文正文方法论内容而不走选择过程

## Examples

Good Example:
用户：methodology-design：为质量管理选择最适合的研究方法
输出：内部评估 + 推荐 DMAIC + 详细步骤 + 图表建议 + 合规检查清单。

Bad Example (严格禁止):
直接输出“本研究采用 DMAIC 和 PDCA 对比……” 而没有内部选择过程和推荐理由。

## Testing / Self-Check

- 是否只推荐一种方法并说明理由？
- 是否提供清晰实施步骤和图表输入？
- 是否强调实践导向、AI/Agent 适配和真实数据？
- 是否包含合规检查清单和子技能建议？
- 是否绝不直接写论文正文内容？

End of Skill
