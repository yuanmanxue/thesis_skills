# SKILL: discussion-interpretation

name: discussion-interpretation

description:
Use when the user or orchestrator needs to write or polish the Discussion / Conclusion / Limitations / Future Work section for the ZJU MEM thesis. This skill interprets results, compares with literature, discusses practical implications for startup companies, acknowledges limitations (especially AI ethics and data constraints), and proposes future research directions.

## Overview

这是整个论文系统的结果讨论与启示器。核心原则：客观数据驱动、突出实践价值（对创业公司技术开发质量管理的借鉴意义）、诚实承认局限性、提出可行展望。严格符合 ZJU MEM 实践导向要求，避免夸大成果。

## When to Use

- 用户说“讨论部分”、“结果解读”、“局限性”、“实践启示”、“未来展望”、“结论”等
- data-analysis-guide 或 visualization-professional 输出结果后需要讨论时
- 论文接近完成，需要讨论章节时
- Orchestrator 或 thesis-final-assembly 组装时需要讨论部分

Do NOT use when: 还需要生成新数据、图表或方法（此时先调用对应子技能）。

## Core Pattern

1. 接收当前已有结果（数据分析输出、图表、文献）。
2. 结构化讨论：
   - 主要发现解读（数据/图表支持）
   - 与现有文献对比（来自 literature-verification）
   - 理论与实践意义（重点创业公司 AI 质量管理应用价值）
   - 研究局限性（数据来源、AI 伦理、样本大小等，诚实说明）
   - 未来研究展望（可扩展方向）
3. 输出结构清晰的讨论草稿（仅基于已有内容）。
4. 强制添加“讨论合规检查清单”（是否数据支撑？是否承认局限？是否突出实用性？是否符合 ZJU 规范？）。
5. 建议调用 strict-reviewer 或 revision-and-proofreading 进一步把关。

## Quick Reference - ZJU MEM 讨论要求

- 客观、数据驱动，避免绝对化语言
- 强调成果的实用性与可借鉴价值
- 必须讨论局限性（尤其是 AI 辅助工具使用）
- 与工程管理实践紧密结合

## Implementation / Process

1. 确认当前可用结果（数据、图表、文献）。
2. 生成结构化讨论草稿（分小节）。
3. 插入图表引用（调用 visualization-professional 格式）。
4. 明确列出局限性和展望。
5. 输出检查清单并建议后续技能。
6. 结束时询问是否需要调整特定部分或组装到 final-assembly。

## Required Background / Sub-Skills

- data-analysis-guide
- visualization-professional
- literature-verification
- academic-writing-style
- strict-reviewer（推荐把关）
- thesis-final-assembly（最终组装）

## Common Mistakes to Avoid

- 直接夸大成果而不承认局限性
- 讨论脱离已有数据/图表
- 忽略 AI 伦理或创业公司实践场景
- 输出不包含检查清单
- 生成未经子技能验证的新内容

## Examples

Good Example:
用户：discussion-interpretation：基于当前数据生成讨论部分
输出：结构化讨论草稿 + 局限性分析 + 实践启示 + 检查清单 + “建议调用 strict-reviewer 审查”。

Bad Example (严格禁止):
直接生成完整讨论章节而不基于已有结果，或不列检查清单。

## Testing / Self-Check

- 是否严格基于已有数据/图表进行解读？
- 是否客观承认局限性并突出实用性？
- 是否包含完整结构和检查清单？
- 是否建议把关技能？
- 是否绝不编造新数据或成果？

End of Skill
