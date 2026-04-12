# Thesis Skills Repository

本仓库用于维护浙江大学 MEM 论文《**AI赋能下创业公司技术开发的质量管理**》的 **thesis Skills 技能体系**。当前版本采用 **方案 A**：先落库 15 个技能文件、统一目录结构和多工具共享链接，再逐步补齐原始技能定义。

## 仓库目标

本仓库的目标不是只保存一份静态文档，而是把 thesis Skills 维护成一套可以被多个 AI 工具共同读取的单一事实源。为此，仓库采用 `skills/` 作为主源目录，再通过符号链接同步到不同工具的约定目录，以保证 Cursor、Claude、Grok 读取的是同一份文件，而不是三份容易漂移的副本。

## 目录结构

| 路径 | 作用 |
|---|---|
| `skills/` | 主技能文件目录，15 个技能的唯一事实源 |
| `.cursor/rules/` | 供 Cursor 读取的规则目录，文件以 `.mdc` 形式通过 symlink 指向主源 |
| `.claude/skills/` | 供 Claude 项目读取的技能目录，通过 symlink 指向主源 |
| `grok/skills/` | 供 Grok 或其他兼容工作流读取的技能目录，通过 symlink 指向主源 |
| `load-all.md` | 新会话快速加载说明 |

## 当前状态说明

当前仓库中的 15 个技能文件分为两类。第一类是本轮会话中已确认加载的技能，包括 `thesis-orchestrator`、`formatting-compliance-zju`、`visualization-professional`、`revision-and-proofreading`、`defense-prep`。第二类是已确认存在但当前上下文未完整保留原文的技能，这些文件已经作为 **可用占位版本** 落库，并明确标记 **待补原文**，以防误把推断内容当成正式定义。

## 15 Skills 清单

| 序号 | 技能名 | 当前状态 |
|---|---|---|
| 1 | thesis-orchestrator | 已确认加载 |
| 2 | literature-verification | 待补原文 |
| 3 | formatting-compliance-zju | 已确认加载 |
| 4 | visualization-professional | 已确认加载 |
| 5 | progress-tracker | 待补原文 |
| 6 | data-analysis-guide | 待补原文 |
| 7 | methodology-design | 待补原文 |
| 8 | thesis-brainstorming | 待补原文 |
| 9 | academic-writing-style | 待补原文 |
| 10 | revision-and-proofreading | 已确认加载 |
| 11 | defense-prep | 已确认加载 |
| 12 | citation-management | 待补原文 |
| 13 | strict-reviewer | 待补原文 |
| 14 | thesis-final-assembly | 待补原文 |
| 15 | discussion-interpretation | 待补原文 |

## 使用方式

推荐统一采用如下调用格式：

> `skill-name：具体请求`

例如：

> `literature-verification：请核验这篇文献是否真实可引用。`

> `defense-prep：请按预答辩标准指出这版 PPT 的高风险问题。`

## 多工具同步原则

所有工具都应优先读取 symlink 指向的主源文件，而不是在各自目录中维护分叉副本。这样做的好处在于，只要 `skills/` 中的源文件更新，Cursor、Claude、Grok 所看到的内容就会同步更新，降低维护成本并避免版本漂移。

## 后续建议

下一步建议优先补齐 `literature-verification`、`methodology-design`、`data-analysis-guide`、`citation-management`、`strict-reviewer` 这几类高优先级技能原文，使仓库尽快从“可用占位版”升级为“可长期复用正式版”。
