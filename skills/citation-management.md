# SKILL: citation-management

name: citation-management

description:
Use when the user or orchestrator needs to manage, format, deduplicate, sort, or export the reference list for the ZJU MEM thesis. This skill works ONLY with literature already verified by literature-verification. It generates complete GB/T 7714 reference lists, supports Word/EndNote/BibTeX export, and keeps the literature library synchronized with thesis-orchestrator.

## Overview

这是整个论文系统的参考文献管理器。核心原则：零幻觉、统一格式、实时同步。所有文献必须来自 literature-verification 的已验证列表，自动生成 GB/T 7714-2015 标准格式（顺序编码制），支持去重、按年份/作者排序，并输出可直接复制到 Word 或 EndNote 的完整参考文献部分。

## When to Use

- 用户说“参考文献列表”、“生成引用”、“GB/T 7714”、“文献去重”、“导出参考文献”等
- Orchestrator 生成报告或 final-assembly 时需要引用列表
- literature-verification 验证新文献后需要更新总列表

Do NOT use when: 需要检索或验证新文献（此时必须先调用 literature-verification）。

## Core Pattern

1. 从 literature-verification 获取当前已验证文献列表。
2. 执行管理操作：去重、排序（默认按出现顺序或作者-年份）、编号。
3. 生成完整参考文献列表（GB/T 7714 格式）。
4. 提供多种导出格式：纯文本（Word 直接复制）、BibTeX、EndNote XML。
5. 与 thesis-orchestrator 同步更新论文的文献库状态。
6. 强制输出“文献管理合规检查清单”（来源是否全部已验证？数量是否满足 ZJU MEM 要求？格式是否统一？）。

## Quick Reference - ZJU MEM 引用规范

- 严格 GB/T 7714-2015（顺序编码制，全文统一编号）。
- 每条文献必须有可验证 DOI 或链接（来自 literature-verification）。
- 参考文献放在论文末尾，按正文中出现顺序编号。
- 优先正式发表文献（知网、万方、IEEE、ACM 等），数量建议 ≥30 篇。

## Implementation / Process

1. 接收用户需求（生成列表、去重、排序、导出等）。
2. 拉取 literature-verification 的已验证文献。
3. 执行去重 + 排序。
4. 输出完整编号后的 GB/T 7714 列表（Markdown 格式，便于转 Word）。
5. 提供导出代码块（直接复制）。
6. 输出“合规检查清单”并同步更新 orchestrator 的文献状态。
7. 结束时询问是否需要调用其他技能（e.g. revision-and-proofreading 检查引用正确性）。

## Required Background / Sub-Skills

- literature-verification（必须，所有文献来源）
- thesis-orchestrator（同步状态）
- formatting-compliance-zju（最终插入论文）

## Common Mistakes to Avoid

- 使用未经 literature-verification 验证的文献
- 引用格式不统一或缺少 DOI/链接
- 直接编造新文献
- 不去重或排序混乱
- 输出不包含合规检查清单

## Examples

Good Example:
用户：citation-management：生成当前已验证文献的完整 GB/T 7714 列表
输出：完整编号列表 + 去重说明 + 导出格式 + 检查清单。

Bad Example (严格禁止):
直接生成参考文献而不说明来源是否已验证，或编造新文献。

## Testing / Self-Check

- 是否所有文献均来自 literature-verification 已验证列表？
- GB/T 7714 格式是否正确？
- 是否有去重和排序？
- 是否包含合规检查清单和导出格式？
- 是否绝不直接生成未经验证的文献？

End of Skill
