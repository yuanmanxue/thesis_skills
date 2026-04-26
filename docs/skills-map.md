# thesis_skills 技能全景图

> 17 个核心技能 · 5 大层级 · 3 层动态架构
> 最后更新：2026-04-26

---

## 三层动态架构总览

```
┌─────────────────────────────────────────────────────────────────────┐
│                         用户请求                                     │
└───────────────────────────┬─────────────────────────────────────────┘
                            │
                            ▼
┌─────────────────────────────────────────────────────────────────────┐
│  第一层：上下文加载层（每次对话必须执行，顺序不可颠倒）               │
│                                                                     │
│   ① thesis-topic-manager  ──────►  ② memory-manager               │
│      动态主题 · 研究上下文           长期记忆 · 滑动窗口              │
│      痛点 · 方法论 · 阶段            知识连接 · 个人思考保护          │
└───────────────────────────┬─────────────────────────────────────────┘
                            │ 上下文就绪
                            ▼
┌─────────────────────────────────────────────────────────────────────┐
│  第二层：总调度层                                                     │
│                                                                     │
│              ┌─────────────────────────┐                           │
│              │   thesis-orchestrator   │                           │
│              │   总调度大脑             │                           │
│              │   8 阶段路由 · 智能匹配  │                           │
│              └────────────┬────────────┘                           │
└───────────────────────────┼─────────────────────────────────────────┘
                            │ 按阶段路由
          ┌─────────────────┼──────────────────┐
          ▼                 ▼                  ▼                  ▼
┌──────────────┐  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐
│  质量控制层  │  │  内容生成层  │  │ 格式与组装层 │  │  项目管理层  │
└──────────────┘  └──────────────┘  └──────────────┘  └──────────────┘
```

---

## 阶段路由速查表

| 论文阶段 | 核心调度技能 | 辅助技能 |
|---|---|---|
| **选题** | brainstorming · methodology-design | literature-verification · progress-tracker |
| **开题** | brainstorming · methodology-design · literature-verification | academic-writing-style · formatting-compliance-zju · progress-tracker |
| **中期报告** | data-analysis-guide · visualization-professional · academic-writing-style | literature-verification · citation-management · formatting-compliance-zju · strict-reviewer |
| **论文撰写** | data-analysis-guide · discussion-interpretation · academic-writing-style · visualization-professional | literature-verification · citation-management · formatting-compliance-zju · methodology-design |
| **预答辩** | defense-prep · strict-reviewer · revision-and-proofreading | formatting-compliance-zju · visualization-professional · progress-tracker |
| **盲审** | strict-reviewer · revision-and-proofreading · thesis-final-assembly | formatting-compliance-zju · citation-management · defense-prep |
| **答辩** | defense-prep · thesis-final-assembly | strict-reviewer · visualization-professional · progress-tracker |
| **完成/定稿** | thesis-final-assembly · citation-management | formatting-compliance-zju · revision-and-proofreading |

---

## 技能详细全景图

### 核心调度层

```
┌─────────────────────────────────────────────────────────────────────┐
│  核心调度层                                                          │
│                                                                     │
│  ┌──────────────────────────────────────────────────────────────┐  │
│  │  thesis-orchestrator                                         │  │
│  │  总调度大脑 · 阶段路由 · 智能调度 · 全阶段覆盖               │  │
│  └──────────────────────────────────────────────────────────────┘  │
│                                                                     │
│  ┌────────────────────────────┐  ┌────────────────────────────┐   │
│  │  thesis-topic-manager      │  │  memory-manager            │   │
│  │  动态主题管理               │  │  长期记忆管理               │   │
│  │  · 研究上下文               │  │  · 滑动窗口（最近5条）      │   │
│  │  · 企业痛点                 │  │  · 知识连接网络             │   │
│  │  · 方法论决策               │  │  · 个人思考100%保护         │   │
│  │  · 当前论文阶段             │  │  · 归档至archive_index.md  │   │
│  └────────────────────────────┘  └────────────────────────────┘   │
└─────────────────────────────────────────────────────────────────────┘
```

### 质量控制层

```
┌─────────────────────────────────────────────────────────────────────┐
│  质量控制层                                                          │
│                                                                     │
│  ┌──────────────────────────┐                                      │
│  │  literature-verification │  文献防幻觉 · 来源核查               │
│  │  所有涉及文献的阶段必调   │  · 知网/万方/IEEE/ACM 验证          │
│  │                          │  · 强制用户手动确认 DOI/链接         │
│  │                          │  · GB/T 7714 格式输出               │
│  └──────────────────────────┘                                      │
│                                                                     │
│  ┌──────────────────────────┐                                      │
│  │  strict-reviewer         │  盲审/预答辩级严格挑刺               │
│  │  预答辩 · 盲审 · 答辩    │  · 致命/重要/建议三级问题            │
│  │                          │  · 通过率预估                        │
│  └──────────────────────────┘                                      │
│                                                                     │
│  ┌──────────────────────────┐                                      │
│  │  revision-and-proofreading│ 语言润色 · 逻辑优化 · 格式修正      │
│  │  所有撰写阶段             │  · 修改前后对比输出                  │
│  └──────────────────────────┘                                      │
└─────────────────────────────────────────────────────────────────────┘
```

### 内容生成层

```
┌─────────────────────────────────────────────────────────────────────┐
│  内容生成层                                                          │
│                                                                     │
│  ┌──────────────────────────┐  ┌──────────────────────────┐       │
│  │  thesis-brainstorming    │  │  methodology-design      │       │
│  │  选题 · 开题             │  │  选题 · 开题 · 撰写      │       │
│  │  · 选题细化              │  │  · 方法论选择             │       │
│  │  · 问题拆解              │  │  · 适用性论证             │       │
│  │  · 创新点挖掘            │  │  · 文献支撑               │       │
│  └──────────────────────────┘  └──────────────────────────┘       │
│                                                                     │
│  ┌──────────────────────────┐  ┌──────────────────────────┐       │
│  │  data-analysis-guide     │  │  discussion-interpretation│       │
│  │  中期报告 · 撰写         │  │  撰写 · 预答辩            │       │
│  │  · 数据处理              │  │  · 结果解释               │       │
│  │  · 可视化                │  │  · 局限性分析             │       │
│  │  · Python/R 代码         │  │  · 实践启示               │       │
│  └──────────────────────────┘  └──────────────────────────┘       │
│                                                                     │
│  ┌──────────────────────────┐  ┌──────────────────────────┐       │
│  │  academic-writing-style  │  │  visualization-professional│      │
│  │  全撰写阶段              │  │  中期报告 · 撰写 · 答辩   │       │
│  │  · 中文学术规范          │  │  · 学术图表               │       │
│  │  · 句式优化              │  │  · 架构图 · 流程图        │       │
│  │  · 逻辑流畅              │  │  · Mermaid/Python 代码   │       │
│  └──────────────────────────┘  └──────────────────────────┘       │
└─────────────────────────────────────────────────────────────────────┘
```

### 格式与组装层

```
┌─────────────────────────────────────────────────────────────────────┐
│  格式与组装层                                                        │
│                                                                     │
│  ┌──────────────────────────┐                                      │
│  │  formatting-compliance-zju│ 浙大 MEM 格式规范守护者（全阶段）    │
│  │                          │  · 字体/间距/页眉/页码               │
│  │                          │  · 图题下置 · 表题上置 · 三线表      │
│  │                          │  · 浙大格式自查清单                  │
│  └──────────────────────────┘                                      │
│                                                                     │
│  ┌──────────────────────────┐  ┌──────────────────────────┐       │
│  │  citation-management     │  │  thesis-final-assembly   │       │
│  │  撰写 · 定稿             │  │  盲审 · 定稿             │       │
│  │  · GB/T 7714-2015        │  │  · 目录自动生成           │       │
│  │  · EndNote/Zotero 联动   │  │  · 摘要/致谢/附录组装    │       │
│  └──────────────────────────┘  └──────────────────────────┘       │
└─────────────────────────────────────────────────────────────────────┘
```

### 项目管理层

```
┌─────────────────────────────────────────────────────────────────────┐
│  项目管理层                                                          │
│                                                                     │
│  ┌──────────────────────────┐  ┌──────────────────────────┐       │
│  │  progress-tracker        │  │  defense-prep            │       │
│  │  全阶段                  │  │  预答辩 · 答辩            │       │
│  │  · 甘特图                │  │  · 答辩 PPT 大纲          │       │
│  │  · 里程碑追踪            │  │  · 常见问题预测           │       │
│  │  · 风险预警              │  │  · 模拟问答               │       │
│  └──────────────────────────┘  └──────────────────────────┘       │
└─────────────────────────────────────────────────────────────────────┘
```

### 跨工具适配层

```
┌─────────────────────────────────────────────────────────────────────┐
│  跨工具适配层（基于 skills/ 主源软链接）                             │
│                                                                     │
│  ┌────────────────┐  ┌────────────────┐  ┌────────────────┐       │
│  │   Perplexity   │  │     Cursor     │  │    Claude      │       │
│  │   Space        │  │  .cursor/rules/│  │ .claude/skills/│       │
│  │ Custom Instruct│  │  .md + .mdc    │  │     .md        │       │
│  └────────────────┘  └────────────────┘  └────────────────┘       │
│                                                                     │
│  ┌────────────────┐  ┌────────────────────────────────────┐       │
│  │      Grok      │  │        load-all.md                 │       │
│  │  grok/skills/  │  │  一键加载（17 个 skill 完整内容）   │       │
│  │      .md       │  │  分两块加载，适配所有 AI 工具       │       │
│  └────────────────┘  └────────────────────────────────────┘       │
└─────────────────────────────────────────────────────────────────────┘
```

---

## 技能关联关系速查

| 技能 | 必须先调用 | 常见后续调用 |
|---|---|---|
| thesis-orchestrator | topic-manager · memory-manager | 所有技能 |
| thesis-topic-manager | — | memory-manager · orchestrator |
| memory-manager | topic-manager | orchestrator |
| literature-verification | — | 所有写作类技能 |
| strict-reviewer | — | revision-and-proofreading · defense-prep |
| revision-and-proofreading | — | formatting-compliance-zju |
| thesis-brainstorming | topic-manager | methodology-design · literature-verification |
| methodology-design | literature-verification | data-analysis-guide · discussion-interpretation |
| data-analysis-guide | — | visualization-professional |
| discussion-interpretation | methodology-design | strict-reviewer |
| academic-writing-style | — | revision-and-proofreading · formatting-compliance-zju |
| visualization-professional | — | formatting-compliance-zju |
| formatting-compliance-zju | — | citation-management · thesis-final-assembly |
| citation-management | — | formatting-compliance-zju |
| thesis-final-assembly | formatting-compliance-zju · citation-management | — |
| progress-tracker | — | defense-prep |
| defense-prep | strict-reviewer | progress-tracker |

---

## 使用入口

```
# 每次新会话标准启动流程
Orchestrator：[你的请求]

# 示例
Orchestrator：帮我检查中期报告第二章的格式
Orchestrator：为当前论文主题进行头脑风暴
Orchestrator：生成研究框架架构图
Orchestrator：验证并整理参考文献列表
Orchestrator：模拟预答辩提问，帮我准备答辩
```
