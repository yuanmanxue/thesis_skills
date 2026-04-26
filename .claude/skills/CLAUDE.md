# Claude Thesis Skills 使用指南（2026-04-26 最终版）

## 推荐用法
1. 在项目根目录创建 `.claude/skills/` 文件夹
2. 把 `skills/` 目录下的核心技能复制/软链接进来（推荐软链接）
3. 每次新对话开头说：
   > "请先调用 thesis-topic-manager 和 memory-manager 加载我的论文上下文和长期记忆"

## Claude 专属优势
- 支持超长上下文（20万 tokens），适合整篇论文分析
- 可一次性加载 8-10 个技能，无需频繁切换
- 推荐搭配 `Artifacts` 功能实时生成图表和代码

## 常用指令模板
- "用 strict-reviewer 帮我审查中期报告第3章"
- "用 visualization-professional 生成一个 AI 质量管理架构图"
- "记录笔记：今天方法论选择为混合研究，理由是……"
