# AGENTS.md

本文件为 **VS Code / Codex / 通用代码代理** 提供统一工作约定。

## Project Type

该仓库是一个 **AI 技能仓库**，不是传统软件项目。请不要假定这里的首要任务是编译、测试或运行应用程序；这里的主要任务是让不同 AI 工具共享同一组 thesis Skills 文件。

## Source of Truth

| 路径 | 角色 |
|---|---|
| `skills/` | 唯一主源 |
| `.cursor/rules/` | Cursor 视图，原则上不直接编辑 |
| `.claude/skills/` | Claude 视图，原则上不直接编辑 |
| `grok/skills/` | Grok 视图，原则上不直接编辑 |

## Agent Workflow

执行任务前，应先判断该请求属于“技能内容修改”“工具适配层修改”还是“普通使用指导”。如果是技能内容修改，直接改 `skills/`。如果是工具适配层修改，优先新增入口说明、配置文件或软链接，而不要复制技能正文。若任务只要求使用技能，则按 `load-all.md` 的顺序读取，而不要无差别载入全部文件。

## Editing Rules

第一，不要把 symlink 目标文件改写成普通副本。第二，不要删除现有 `skills/` 文件名，因为这些名称已经用于统一调用格式。第三，新增适配文件时，应尽量保持轻量，只说明“如何读取”和“先读什么”，不要重新复制整套技能内容。第四，若发现技能定义缺失，应保留 **待补原文** 标记，而不是自行伪造完整原文。

## Suggested Starting Files

建议代理启动时优先阅读 `README.md`、`load-all.md`、`CODEX.md`，随后再按任务读取对应 `skills/*.md`。
