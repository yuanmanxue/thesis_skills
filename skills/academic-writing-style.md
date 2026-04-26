# SKILL: academic-writing-style

name: academic-writing-style

description:
Use when the user needs to rewrite, polish, or check any thesis text to conform to formal Chinese academic writing style for ZJU MEM thesis. This skill enforces objective, rigorous, concise language: avoid spoken/colloquial expressions, emotional words, absolute claims, ensure logical flow, precise terminology, and alignment with ZJU rules (简炼透彻、数据可靠、无非学术性词语).

## Overview

这是整个论文系统的学术写作风格规范器。核心原则：中文学术论文必须正式、客观、严谨。文字简炼、论述准确、逻辑清晰、避免口语和文学化表达。特别适配 ZJU MEM 实践导向论文：强调工程背景、问题导向、真实数据、实用价值，符合《浙江大学研究生学位论文编写规则》要求。

## When to Use

- 用户说“改写成正式语气”、“学术写作风格”、“检查语气”、“润色这段文字”、“避免口语”等
- 任何技能输出草稿后需要风格规范时
- Orchestrator 生成报告内容后需要学术化时

Do NOT use when: 只是 brainstorm 思路、检索文献或生成图表（此时用对应子技能）。

## Core Pattern

1. 接收用户提供的原文或需求。
2. 分析问题：识别口语化表达、感情色彩词、绝对断言、冗余、空泛描述、逻辑不严谨处。
3. 重写为正式学术风格：
   - 使用客观中性语言（“研究发现”而非“明显证明”）
   - 句子简炼、逻辑严密（先论点后论据）
   - 术语精确（统一使用专业名词，避免“大白话”）
   - 保持实践导向（突出真实数据、AI 赋能应用价值）
4. 输出“改写前/后对比” + “规范检查清单”。
5. 确保符合浙大要求：图表描述自明性、引用规范、章节层次分明。

## Quick Reference - ZJU MEM 写作规范

- 论点准确精炼，论据充分，论证严谨、逻辑性强。
- 避免文学性质的带感情色彩的非学术性词语。
- 文字简炼、说明透彻、推理严谨、立论正确。
- 图表具有自明性（图题下方、表题上方）。
- 整体：层次分明、数据可靠、格式规范。

## Implementation / Process

1. 明确用户提供的文本或具体段落。
2. 列出原文主要问题（口语、冗余、绝对词等）。
3. 提供改写后的正式版本（Markdown 格式，便于复制到 Word）。
4. 输出“学术写作合规检查清单”：
   - 是否避免口语和感情色彩？
   - 是否逻辑严谨、用词精确？
   - 是否符合实践导向和 ZJU 规范？
   - 是否准备好与 formatting-compliance-zju 结合？
5. 建议迭代：“是否需要进一步调整特定部分？”

## Required Background / Sub-Skills

- formatting-compliance-zju（最终格式）
- thesis-orchestrator（可选）
- literature-verification（引用相关）

## Common Mistakes to Avoid

- 保留口语（如“挺好的”、“明显看出”、“超级重要”）
- 使用绝对词（如“完全证明”、“必然导致”）
- 句子过长或空泛描述
- 直接输出未经检查的正式文本而不提供检查清单
- 风格与实践导向脱节（忽略 thesis-topic-manager 提供的当前研究场景）
- 生成文学化或情感化表达

## Examples

Good Example:
用户：academic-writing-style：把这段文字改成正式学术语气（原文：AI 用起来感觉质量管理变好了很多）
输出：问题分析 + 改写版本（“研究结果表明，AI 技术的应用显著提升了创业公司技术开发过程中的质量管理水平……”） + 检查清单。

Bad Example (严格禁止):
直接改写而不列出问题或检查清单，或保留口语表达。

## Testing / Self-Check

- 改写后是否正式、客观、简炼？
- 是否消除口语和非学术性词语？
- 是否逻辑严谨并符合 ZJU MEM 实践导向？
- 是否包含检查清单和迭代建议？
- 是否绝不直接生成未经规范的完整论文内容？

End of Skill
