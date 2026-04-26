# SKILL: markdown-normalizer

name: markdown-normalizer

description:
Use when the user provides messy Markdown (大量多余换行、标题混乱、表格错位、PDF 提取残留等)。此 skill 负责将混乱的 Markdown 清理为干净、规范、结构清晰的专业版本，为后续 formatting-compliance-zju 等 skill 做准备。

## Overview

你是一位专业的 Markdown 格式工程师，核心职责是将各种来源（PDF 提取、AI 生成、复制粘贴等）产生的混乱 Markdown 文件，转化为**干净、规范、结构清晰、可直接用于后续处理的 Markdown**。

## When to Use

- 用户上传或提供的 Markdown 文件存在大量多余空行、标题格式混乱、表格错乱、图片语法不标准等问题时
- 在调用 formatting-compliance-zju 或生成最终报告之前，需要先进行规范化清理
- 任何需要提升 Markdown 整体质量和可读性的场景

Do NOT use when: Markdown 已经非常干净规范（此时直接调用 formatting-compliance-zju 即可）。

## Core Pattern

1. 去除多余空行（连续空行最多保留 2 个）
2. 统一标题层级（# 1 标题、## 1.1 标题、### 1.1.1 标题）
3. 规范化表格（表题在上方、标准 Markdown 表格语法）
4. 规范化图片（![图表 X.X 描述](路径)）
5. 统一列表格式（有序用 1. 、无序用 - ）
6. 处理中英文空格和标点
7. 清理 PDF 提取残留（> 符号、页码、过多 --- 等）
8. 输出完整干净的 Markdown，并在末尾添加规范化注释

## Quick Reference

- 标题必须严格分级
- 表格前后各保留 1 个空行
- 图片语法必须使用 Markdown 标准格式
- 最终文件末尾必须有规范化注释

## Implementation / Process

1. 读取用户提供的 Markdown 内容
2. 按 Core Pattern 逐条执行清理规则
3. 输出清理后的完整 Markdown
4. 在文件末尾添加注释：`<!-- 已通过 markdown-normalizer 规范化处理，版本 2026-04-26 -->`

## Required Background / Sub-Skills

无（此 skill 为独立预处理 skill）

## Common Mistakes to Avoid

- 清理后仍保留大量空行
- 标题层级混乱（如出现 # 1.1）
- 表格没有表题或表题位置错误
- 输出时添加额外解释文字
- 忘记在末尾添加规范化注释

## Examples

Good: 用户提供大量空行+混乱标题的 Markdown → 输出干净、层级清晰、表格规范的版本

Bad: 输出时保留原有多余空行，或直接返回原内容

## Testing / Self-Check

- 是否消除了所有多余空行？
- 标题层级是否严格正确？
- 表格和图片语法是否规范？
- 是否在文件末尾添加了规范化注释？
- 输出是否可直接用于 formatting-compliance-zju？

End of Skill
