# SKILL: data-analysis-guide

name: data-analysis-guide

description:
Use when the user needs guidance on data collection, cleaning, calculation, statistical analysis, or method selection for the ZJU MEM thesis on AI-empowered quality management in startup technology development. This skill focuses on practical engineering management data handling, method comparison/selection (not writing full comparison tables in paper), and ensures real data + ZJU formatting compliance.

## Overview

这是整个论文系统的数据分析指导器。核心原则：强调实践导向（真实企业数据、AI Agent 应用场景）、方法选择（DMAIC、PDCA、六西格玛、系统动力学等质量管理常用方法），只选最适合的一种用于论文。所有步骤必须支持真实数据计算、统计分析，并生成可用于 visualization-professional 的图表输入。

## When to Use

- 用户说“数据分析”、“数据清洗”、“统计计算”、“方法选择”、“DMAIC”、“质量管理方法”等
- 需要为中期报告、结果章节准备数据处理流程时
- Orchestrator 或其他技能要求数据支持时

Do NOT use when: 只是文献检索或纯格式调整（此时用对应子技能）。

## Core Pattern

1. 明确当前数据需求（收集、清洗、计算、统计、方法选择）。
2. 提供分步指导：
   - 数据收集：调研问卷、企业日志、AI 系统日志、质量指标等真实来源。
   - 数据清洗：缺失值处理、异常值检测、标准化（适合 AI/Agent 数据）。
   - 计算与统计：描述性统计、假设检验、回归分析、AI 模型评价指标（准确率、召回率、F1 等）。
   - 方法选择：调研常见质量管理方法（DMAIC、PDCA、六西格玛、系统动力学等），内部对比后推荐最适合的一种（理由基于创业公司场景、AI 赋能特点），不在正文中写大篇对比。
3. 输出可执行步骤 + Python 代码片段（numpy/pandas/statsmodels 等，用户可直接运行）。
4. 生成图表输入建议（供 visualization-professional 调用：架构图、流程图、因果循环图、雷达图等）。
5. 强制添加“真实数据验证提醒”和“浙大图表自明性检查”。

## Quick Reference - 实践导向重点

- 优先真实企业/模拟数据（创业公司技术开发质量指标：缺陷率、交付周期、AI 干预效果等）。
- 方法选择原则：简单可行、数据支撑强、AI 赋能适配。
- 输出必须支持 ZJU 规范：图表自明性（编号+图题下方）、真实数据可靠。

## Implementation / Process

1. 确认用户当前阶段和已有数据（问卷、日志、AI 输出等）。
2. 分模块输出指导（收集 → 清洗 → 计算 → 统计 → 方法推荐）。
3. 提供最小化 Python 代码示例（清洗、统计、简单可视化）。
4. 推荐最适合方法 + 简要理由（例如“推荐 DMAIC，因其 Define-Measure-Analyze-Improve-Control 结构适合 AI 质量管理闭环”）。
5. 输出“数据分析合规检查清单”：
   - 数据是否真实可验证？
   - 方法是否已选定（不在正文对比）？
   - 图表输入是否准备好自明性？
6. 建议调用其他技能（visualization-professional 生成图表、formatting-compliance-zju 格式化）。

## Required Background / Sub-Skills

- literature-verification（方法相关文献）
- visualization-professional（图表）
- formatting-compliance-zju（最终输出）
- thesis-orchestrator（可选）

## Common Mistakes to Avoid

- 直接编造不存在的数据或结果
- 在论文正文中写大篇方法对比表格（只内部选择）
- 忽略真实数据来源和验证
- 生成泛化步骤而不绑定 AI 赋能创业公司质量管理场景
- 无 Python 代码或图表输入建议
- 不提醒浙大自明性要求

## Examples

Good Example:
用户：data-analysis-guide：为质量管理生成数据分析步骤和方法选择
输出：分步指导 + DMAIC 推荐理由 + Python 清洗代码片段 + 图表输入建议 + 合规检查清单。

Bad Example (严格禁止):
直接输出“数据分析结果显示 AI 提升了 30%质量……” 而没有步骤、验证和方法选择过程。

## Testing / Self-Check

- 是否提供清晰分步指导和代码？
- 方法是否只推荐一种并说明理由？
- 是否强调真实数据和实践导向？
- 是否包含浙大图表自明性检查和子技能建议？
- 是否绝不直接写论文正文结果？

End of Skill
