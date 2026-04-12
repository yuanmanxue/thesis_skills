# CODEX.md

本文件用于让 **Codex / OpenAI Coding Agent 类工作流** 在进入仓库后，先理解项目结构，再按统一入口加载 thesis Skills，而不是直接随机读取单个文件。

## Repository Role

本仓库不是普通代码仓库，而是一个围绕浙江大学 MEM 论文任务构建的 **技能知识仓库**。唯一主源目录是 `skills/`，其余目录如 `.cursor/rules/`、`.claude/skills/`、`grok/skills/` 都是为不同工具准备的适配层或符号链接视图，不应被当作独立事实源进行维护。

## First Read Order

当你在本仓库中执行任何与论文写作、文献核验、格式检查、答辩准备、图表制作有关的任务时，应优先按以下顺序读取：

| 顺序 | 文件 | 目的 |
|---|---|---|
| 1 | `README.md` | 理解仓库目标、目录结构和 15 个技能全景 |
| 2 | `load-all.md` | 获取统一加载说明与建议加载顺序 |
| 3 | `skills/thesis-orchestrator.md` | 获得总控技能视角 |
| 4 | `skills/*.md` | 仅按任务需要读取对应技能 |

## Operating Principles

处理任务时必须遵循以下原则。第一，`skills/` 是唯一事实源，不要把 `.cursor/rules/` 或 `.claude/skills/` 里的 symlink 文件改写成独立副本。第二，如果某个技能文件标记 **待补原文**，应将其视为当前可运行占位版，而不是完整原始定义。第三，涉及文献正式使用时，必须优先经过 `literature-verification`；涉及提交版文稿时，应联动 `formatting-compliance-zju` 与 `thesis-final-assembly`。第四，禁止虚构数据、引用或案例细节。

## Recommended Prompt Pattern

建议在 Codex 会话中使用如下任务入口：

> 请先阅读 `README.md`、`load-all.md` 与 `skills/thesis-orchestrator.md`，然后根据我的任务只加载必要的技能文件。保持 `skills/` 为唯一事实源，不要复制规则内容。若某技能标记“待补原文”，请将其视为占位版并显式提醒我。

## Write Policy

如果需要修改技能内容，应直接编辑 `skills/` 下的源文件；如果需要增强工具适配层，应优先新增入口说明文件，而不是复制 15 个技能文件。任何自动化脚本、配置或文档都不得破坏这种单源结构。
