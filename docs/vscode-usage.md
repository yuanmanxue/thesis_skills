# VS Code Usage Guide

本文档说明如何在 **VS Code** 中使用本仓库的 thesis Skills，而无需修改 `skills/` 主源。

## 基本使用方式

在本地将仓库 clone 后，直接用 VS Code 打开仓库根目录即可。此时你可以把 `README.md`、`load-all.md`、`CODEX.md` 作为项目入口说明文件。对于支持工作区上下文的 AI 插件，建议先在会话中明确要求其按这些文件的顺序读取，而不是盲目扫描整个仓库。

## 推荐会话开场语

> 请将此仓库视为 thesis Skills 知识库。先阅读 `README.md`、`load-all.md`、`CODEX.md`，再按需读取 `skills/` 下相关技能文件。`skills/` 是唯一事实源；`.cursor/rules/`、`.claude/skills/`、`grok/skills/` 只是同步视图。

## 何时需要改源码

通常情况下，你不需要修改 15 个技能文件本身。只有在技能定义真的要升级时，才需要直接编辑 `skills/*.md`。如果你只是希望 VS Code 中的 AI 更容易读懂仓库，应优先维护入口文件与说明文档，而不是复制技能内容。

## 最佳实践

| 场景 | 推荐操作 |
|---|---|
| 想快速进入任务 | 先打开 `load-all.md` |
| 想了解全局结构 | 先打开 `README.md` |
| 想让代理理解如何读取仓库 | 打开 `CODEX.md` 与 `AGENTS.md` |
| 想修改某个技能 | 直接修改 `skills/<skill-name>.md` |
| 想同步到其他工具 | 保持 symlink 目录不被破坏 |
