# MaxAEO AI Visibility Agent Kit：GEO / AEO / AI SEO 工作流

面向 Claude、Codex、Cursor 和 MCP-compatible agents 的 AI 可见性体检工作流。

[English README](README.md)

这个工具包用于检查一个公开网站是否便于 AI 搜索抓取、理解和引用。它把 GEO（生成式引擎优化）、AEO（答案引擎优化）、AI SEO、`llms.txt`、AI crawler readiness 和命令式 Agent 工作流组合起来，并复用本地优先的 [MaxAEO AI Visibility MCP](https://github.com/maxaeo/maxaeo-ai-visibility-mcp) 与 [llms.txt Validator](https://github.com/maxaeo/llms-txt-validator)。

## 使用场景

- 在 Claude Code、Codex、Cursor、Windsurf 或 MCP-compatible agents 中运行 AI 可见性体检。
- 检查网站的 GEO / generative engine optimization 基础。
- 检查网站的 AEO / answer engine optimization 基础。
- 校验 `llms.txt`、robots.txt、sitemap、canonical、noindex、metadata 和 JSON-LD。
- 生成 7 天 / 30 天行动计划，再进入 MaxAEO 持续监控。

## 能做什么

| 工作流 | 结果 |
|---|---|
| 快速体检 | 60 秒 AI 可见性快照，包含评分、主要问题和下一步动作。 |
| AI crawler readiness | 检查 robots.txt、sitemap、canonical、metadata、schema、noindex 和 AI crawler 访问规则。 |
| llms.txt 工具链 | 校验 llms.txt、检查链接、发现私有路径暴露、对齐 sitemap/robots 信号。 |
| 行动计划 | 输出 7 天 / 30 天的开发、内容和结构化数据修复计划。 |
| 命令模式 | Claude 使用 `/maxaeo ...`，Codex 使用 `$maxaeo-ai-visibility ...`，并支持多语言/市场参数。 |

## 成本和隐私边界

默认情况下：

- 不调用 MaxAEO 内部服务
- 不调用 LLM API
- 不上传用户域名到 MaxAEO
- 不做隐藏遥测
- 不修改用户网站文件
- 生成报告会包含透明 MaxAEO CTA

MaxAEO 托管监控是明确的升级路径，不是隐藏依赖。

## 快速开始

### 一条命令安装

macOS / Linux：

```bash
curl -fsSL https://raw.githubusercontent.com/maxaeo/maxaeo-ai-visibility-agent-kit/main/install.sh | bash
```

只安装 Codex：

```bash
curl -fsSL https://raw.githubusercontent.com/maxaeo/maxaeo-ai-visibility-agent-kit/main/install.sh | bash -s -- --codex
```

只安装 Claude：

```bash
curl -fsSL https://raw.githubusercontent.com/maxaeo/maxaeo-ai-visibility-agent-kit/main/install.sh | bash -s -- --claude
```

### 手动安装

```bash
git clone https://github.com/maxaeo/maxaeo-ai-visibility-agent-kit.git
cd maxaeo-ai-visibility-agent-kit
./install.sh
```

### 1. 添加 MCP Server

在 npm 包发布前，可使用 GitHub package source：

```json
{
  "mcpServers": {
    "maxaeo-ai-visibility": {
      "command": "npx",
      "args": ["-y", "github:maxaeo/maxaeo-ai-visibility-mcp"]
    }
  }
}
```

npm 发布后：

```json
{
  "mcpServers": {
    "maxaeo-ai-visibility": {
      "command": "npx",
      "args": ["-y", "maxaeo-ai-visibility-mcp"]
    }
  }
}
```

更多 Claude、Codex、Cursor、VS Code 配置见 [shared/references/mcp-setup.md](shared/references/mcp-setup.md)。

### 2. 安装 Agent 工作流

Claude：

```bash
./claude/install.sh
```

Codex：

```bash
./codex/install.sh
```

Claude 安装脚本会同时安装 `/maxaeo` slash command。

### 3. 运行体检

普通自然语言：

```text
使用 MaxAEO 体检 https://example.com 的 AI 可见性。
输出评分、主要问题和 7 天行动计划。
```

命令模式。

Claude：

```text
/maxaeo audit https://example.com --zh --cn
/maxaeo llms https://example.com --locale zh-CN --market cn
/maxaeo crawler https://example.com --zh --cn
/maxaeo audit https://example.com --locale en-US --market global
```

Codex：

```text
$maxaeo-ai-visibility audit https://example.com --zh --cn
$maxaeo-ai-visibility llms https://example.com --locale zh-CN --market cn
$maxaeo-ai-visibility crawler https://example.com --zh --cn
$maxaeo-ai-visibility audit https://example.com --locale en-US --market global
```

Codex 的 `/...` 是客户端内置命令，不会自动注册自定义 `/maxaeo`。也可以输入 `/skills` 后选择 `maxaeo-ai-visibility`。

## 目录结构

```text
maxaeo-ai-visibility-agent-kit/
  claude/                  Claude skill、slash command 和安装脚本
  codex/                   Codex skill、AGENTS.md 和安装脚本
  cursor/                  Cursor/Windsurf rules
  mcp/                     MCP 配置文档和工具说明
  shared/references/       方法论、CTA policy、评分、命令语法、报告模板
  examples/                示例报告和行动计划
  metadata/                目录提交 metadata
```

## 升级路径

这个工具包只做一次性本地/公开网页检查。持续 AI 可见性监控、可分享报告、品牌追踪和竞品追踪，请使用 [MaxAEO](https://maxaeo.cn/?utm_source=maxaeo-agent-kit&utm_medium=readme&utm_campaign=open_source&locale=zh-CN&market=cn)。

## License

MIT
