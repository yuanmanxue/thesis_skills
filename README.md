# Thesis Skills - 浙江大学工程管理硕士毕业论文 Skills 体系

**项目介绍**  
这是一个专为“AI 赋能下创业公司技术开发的质量管理”毕业论文定制的 Skills 体系，包含 15 个模块化技能 + 1 个总调度器（thesis-orchestrator）。  
完全适配 ZJU MEM 实践导向论文要求（中期报告模板、GB/T 7714 引用、图表自明性、真实文献、防幻觉等）。

### 技能列表（skills/ 文件夹）

- thesis-orchestrator.md → 总调度器（核心大脑）
- literature-verification.md → 文献防幻觉验证
- formatting-compliance-zju.md → 浙大格式合规守护者
- visualization-professional.md → 专业图表生成器（AI Agent 架构图等）
- progress-tracker.md → 进度追踪 + 节点风险预警
- citation-management.md → 参考文献管理（GB/T 7714）
- strict-reviewer.md → 严格审稿人模拟（盲审/预答辩挑刺）
- data-analysis-guide.md → 数据分析指导（含 Python 代码）
- methodology-design.md → 方法论设计与选择
- thesis-brainstorming.md → 头脑风暴与问题提炼
- academic-writing-style.md → 中文学术写作风格规范
- revision-and-proofreading.md → 修订与校对
- defense-prep.md → 预答辩/盲审准备
- thesis-final-assembly.md → 最终论文组装
- discussion-interpretation.md → 结果讨论、局限性、实践启示

### 使用方法

#### 1. 一键加载（推荐）

打开 `load-all.md`，按照里面的说明分两块复制加载。

#### 2. 日常使用

加载完成后直接使用：

### 跨工具配置

- **Cursor**：symlink 到 `.cursor/rules/` 或 `.cursor/skills/`
- **Claude**：symlink 到 `.claude/skills/`
- **Grok**：直接复制 load-all.md 内容加载

### 维护方式

```bash
# 更新所有技能
git pull

# 本地同步（推荐使用 sync.sh）
./sync.sh
```
