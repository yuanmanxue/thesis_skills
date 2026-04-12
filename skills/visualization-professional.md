# SKILL: visualization-professional

name: visualization-professional

description:
Use when the user needs professional figures, diagrams, charts or visualizations for the ZJU MEM thesis, especially AI/Agent related architecture diagrams, flowcharts, sequence diagrams, causal loop diagrams, etc. This skill enforces Zhejiang University figure/table self-explanatory rules (自明性): figures must be clear, numbered (e.g. 图 2.3), with caption below; tables with caption above; all in academic style suitable for engineering management practical thesis.

## Overview

这是整个论文系统的专业图表生成器。核心原则：所有图表必须具有“自明性”（读者不看正文也能理解），鲜明清晰，符合浙大规范（图题置于图下方，表题置于表上方；编号分章连续，如 图 3.1；支持架构图、流程图、时序图、因果循环图、雷达图、甘特图等）。特别适配计算机/AI/Agent 方向的实践导向内容（AI 赋能质量管理流程、Agent 架构、技术开发质量控制等）。

## When to Use

- 用户说“生成图”、“画架构图”、“流程图”、“因果循环图”、“可视化”、“visualization”等
- 需要为中期报告、章节结果、方法论部分生成图表时
- Orchestrator 或其他技能要求图表支持时

Do NOT use when: 只是文本写作或文献检索（此时用对应子技能）。

## Core Pattern

1. 明确用户需求（图表类型、具体内容、章节位置、与论文主题的关联）。
2. 生成图表描述（Markdown 友好，便于插入 Word）。
3. 强制添加浙大自明性元素：
   - 图编号 + 图题（置于图下方，简单明了，中英可选）
   - 清晰标注、图例、标度（如果适用）
   - 与正文主题紧密相关（AI 赋能创业公司技术开发质量管理）
4. 提供多种输出格式：
   - 详细文本描述（适合直接画或用 Figdraw 等工具）
   - Mermaid / PlantUML / Python (matplotlib/seaborn) 可执行代码片段（用户可直接运行生成高清图）
   - 关键元素列表（节点、箭头、关系）
5. 输出“浙大图表合规检查清单”：自明性是否满足？编号是否正确？是否置于正确位置？
6. 建议在论文中的插入位置和引用方式（如“如图 2.1 所示”）。

## Quick Reference - ZJU 图表规范

- 图具有“自明性”：包括曲线图、构造图、示意图、框图、流程图、记录图等，必须鲜明清晰。图编号和图题置于图下方。
- 表具有“自明性”：表题置于表上方，三线表。
- 编号规则：分章连续编码，如 图 1.1、表 2.3。
- 图表与正文紧密结合，避免分开；照片需有尺寸标度。
- 学术要求：简洁、专业、支持实践导向（真实数据可视化、方法比较、系统架构等）。

## Implementation / Process

1. 确认图表类型和具体内容（例如：AI Agent 质量管理系统架构图、质量管理反馈因果循环图、技术开发流程图等）。
2. 生成详细描述 + Mermaid/Python 代码（优先提供可运行代码）。
3. 强制包含自明性元素和浙大格式。
4. 输出合规版本 + 检查清单。
5. 结束时询问是否需要调整或调用其他技能（如 formatting-compliance-zju 进一步格式化）。

## Required Background / Sub-Skills

- literature-verification（如果图表涉及数据或引用）
- formatting-compliance-zju（最终插入论文时）
- thesis-orchestrator（可选）

## Common Mistakes to Avoid

- 图表无自明性（缺少图题、标注不清楚）
- 编号错误或不分章
- 图题置于错误位置（图题必须在下方）
- 生成与论文主题无关的泛化图表
- 只给描述而不提供可执行代码或详细元素
- 忽略 AI/Agent 方向的专业性（架构图、时序图、因果循环等）

## Examples

Good Example:
用户：visualization-professional：生成 AI Agent 质量管理系统的架构图
输出：详细 Mermaid 代码 + 文本描述 + 图编号+图题建议 + 自明性检查清单 + “建议作为图 3.2 插入方法论章节”。

Bad Example (严格禁止):
直接输出一张没有图题、没有编号、无法自明的简单图片描述，而不检查浙大规范。

## Testing / Self-Check

- 图表是否具有自明性（独立可理解）？
- 是否符合浙大规则（图题下方、编号正确、三线表等）？
- 是否提供 Mermaid/Python 等可执行输出？
- 是否与主题“AI 赋能创业公司技术开发的质量管理”紧密相关？
- 是否包含合规检查清单？

End of Skill
