# Thesis Skills - 浙江大学工程管理硕士毕业论文 Skills 体系

**项目介绍**

这是一个专为浙江大学工程管理硕士（MEM）毕业论文定制的 AI Skills 体系，包含 **17 个模块化技能** + **3 层动态架构**（Orchestrator → Topic Manager → Memory Manager）。完全适配 ZJU MEM 实践导向论文要求（中期报告模板、GB/T 7714 引用、图表自明性、真实文献、防幻觉等）。

论文主题由 `thesis-topic-manager` 动态管理，所有 skill 均通过动态引用获取当前研究上下文，实现主题解耦。

## 三层动态架构

```
用户请求
  ↓
┌─────────────────────────────────────────────┐
│  第一层：上下文加载（每次对话必须执行）       │
│  thesis-topic-manager → memory-manager       │
└─────────────────────────────────────────────┘
  ↓
┌─────────────────────────────────────────────┐
│  第二层：总调度（按阶段路由）                │
│  thesis-orchestrator（含阶段-技能路由表）     │
└─────────────────────────────────────────────┘
  ↓
┌─────────────────────────────────────────────┐
│  第三层：功能技能（按需调度）                │
│  质量控制 / 内容生成 / 格式组装 / 项目管理   │
└─────────────────────────────────────────────┘
```

## 技能列表（skills/ 文件夹）

### 核心调度层
| 技能 | 职责 |
|---|---|
| thesis-orchestrator | 总调度器（核心大脑），按阶段智能路由所有 skill |
| thesis-topic-manager | 研究上下文智能管家，动态管理论文主题 |
| memory-manager | 长期记忆管家（滑动窗口 + 知识连接） |

### 质量控制层
| 技能 | 职责 |
|---|---|
| literature-verification | 文献防幻觉验证（零容忍幻觉） |
| strict-reviewer | 严格审稿人模拟（盲审/预答辩挑刺） |
| revision-and-proofreading | 修订与校对 |

### 内容生成层
| 技能 | 职责 |
|---|---|
| academic-writing-style | 中文学术写作风格规范 |
| thesis-brainstorming | 头脑风暴与问题提炼 |
| methodology-design | 方法论设计与选择 |
| data-analysis-guide | 数据分析指导（含 Python 代码） |
| discussion-interpretation | 结果讨论、局限性、实践启示 |
| visualization-professional | 专业图表生成器 |

### 格式与组装层
| 技能 | 职责 |
|---|---|
| formatting-compliance-zju | 浙大格式合规守护者 |
| citation-management | 参考文献管理（GB/T 7714） |
| thesis-final-assembly | 最终论文组装 |

### 项目管理层
| 技能 | 职责 |
|---|---|
| progress-tracker | 进度追踪 + 节点风险预警 |
| defense-prep | 预答辩/盲审/答辩准备 |

### 工具适配层
| 文件 | 职责 |
|---|---|
| perplexity-custom-instructions | Perplexity Space 专用 Master Prompt |

## 技能全景图

详细的技能架构图、阶段路由速查表和技能关联关系，请查看：

**[→ docs/skills-map.md](docs/skills-map.md)**

---

## 使用方法

### 1. 一键加载（推荐）

打开 `load-all.md`，按照里面的说明分两块复制加载（已包含全部 17 个技能的完整内容）。

### 2. 日常使用

加载完成后直接使用：

```
Orchestrator：帮我检查中期报告的第二章格式
Orchestrator：为当前论文主题进行头脑风暴
Orchestrator：生成 AI 系统架构图
```

## 跨工具配置

| 工具 | 配置方式 |
|---|---|
| **Cursor** | `.cursor/rules/` 目录下已有 .md + .mdc 软链接 |
| **Claude** | `.claude/skills/` 目录下已有 .md 软链接 |
| **Grok** | `grok/skills/` 目录下已有 .md 软链接 |
| **Perplexity** | 使用 `skills/perplexity-custom-instructions.md` 作为 Custom Instructions |
| **Codex / VS Code** | 参考 `CODEX.md` 和 `docs/vscode-usage.md` |

## 目录结构

```
thesis_skills/
├── skills/                  ← 唯一主源（所有技能定义）
├── memory/                  ← 长期记忆存储
│   ├── user-personal-memory.md   ← 主索引（滑动窗口，最近 5 条）
│   ├── archive_index.md          ← 归档索引
│   └── notes/                    ← 学习笔记
├── .cursor/rules/           ← Cursor 适配层（symlink）
├── .claude/skills/          ← Claude 适配层（symlink）
├── grok/skills/             ← Grok 适配层（symlink）
├── docs/                    ← 使用文档
├── load-all.md              ← 一键加载模板（含全部技能内容）
├── sync.sh                  ← 同步脚本
├── generate_load_all.py     ← load-all.md 生成脚本
├── AGENTS.md                ← 通用代理入口约定
├── CODEX.md                 ← Codex 入口约定
├── CLAUDE.md                ← Claude 入口约定
└── README.md                ← 本文件
```

## 维护方式

```bash
# 更新所有技能
git pull

# 本地同步（推荐使用 sync.sh）
./sync.sh

# 重新生成 load-all.md（修改 skill 后执行）
python3 generate_load_all.py
```

## 设计原则

- **单源结构**：`skills/` 是唯一事实源，其他目录均为软链接
- **动态主题**：论文主题由 `thesis-topic-manager` 动态管理，所有 skill 通过动态引用获取
- **防幻觉铁律**：所有文献必须经 `literature-verification` 验证后才能使用
- **滑动窗口记忆**：主索引只保留最近 5 条重要记录，旧记录自动归档
- **个人思考保护**：100% 保留用户原始表述，绝不修改立场和结论
- **阶段路由调度**：`thesis-orchestrator` 根据论文阶段自动匹配技能组合
