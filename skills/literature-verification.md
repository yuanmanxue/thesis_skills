# SKILL: literature-verification

name: literature-verification

description:
Use when the user or any other thesis skill needs to cite literature for the ZJU MEM thesis on "AI 赋能下创业公司技术开发的质量管理". This skill MUST be called before any literature is used in brainstorming, outlining, writing, or reporting. It ensures ONLY real, formally published literature from credible platforms (知网、万方、维普、CSSCI、北大核心、IEEE、ACM、Google Scholar with verifiable DOI/link) is accepted. Never allow fabricated or "可能存在" references.

## Overview

这是整个论文系统的文献防幻觉防御墙。核心原则：零容忍幻觉 —— 所有文献必须可验证为真实发表的正式文献。输出时强制要求用户手动确认来源链接/DOI 后才能继续使用。

## When to Use

- 任何需要添加文献、文献综述、参考文献列表、国内外研究现状时
- Orchestrator 或其他技能请求文献支持时
- 用户说“找文献”、“引用 XX”、“文献综述”、“研究现状”等

Do NOT use when: 只是 brainstorm 想法而不需要具体引用。

## Core Pattern

1. 生成精准搜索关键词（基于论文主题）。
2. 输出可验证列表：每条文献必须包含标题、作者、发表年份、期刊/会议/来源平台、DOI 或可访问链接。
3. 强制验证检查点：列出“用户手动验证清单”，只有用户确认后才允许使用。
4. 同时输出 GB/T 7714 格式。
5. 优先近期、高影响力、与 AI 赋能质量管理相关的正式发表文献。

## Quick Reference

- 允许来源：知网、万方、维普、CSSCI、北大核心、IEEE Xplore、ACM Digital Library 等。
- 禁止：任何“可能存在”或未提供链接的文献。

## Implementation / Process

1. 提取用户当前具体需求。
2. 生成 5-10 个精准搜索关键词。
3. 提供 8-15 条候选文献（每条带 DOI/链接 + 相关性说明）。
4. 必须输出醒目的【用户手动验证清单】。
5. 只有用户回复“已确认”后，才允许后续技能使用这些文献。
6. 记录到 Orchestrator。

## Required Background / Sub-Skills

- thesis-orchestrator（可选）

## Common Mistakes to Avoid

- 生成不存在的文献
- 只给标题不给链接
- 跳过用户验证步骤
- 文献与主题无关

## Examples

**Good Example**:
输出带 DOI/链接的候选文献 + 详细验证清单 + GB/T 7714 格式 + 相关性说明，并要求用户确认。

**Bad Example (严格禁止)**:
直接输出“根据某论文……” 而没有来源和验证步骤。

## Testing / Self-Check

- 每条文献是否有可验证链接/DOI？
- 是否强制包含用户手动验证检查点？
- 是否符合 GB/T 7714 格式？
- 是否与主题紧密相关？

End of Skill
