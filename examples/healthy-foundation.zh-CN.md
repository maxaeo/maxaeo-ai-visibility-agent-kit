# 基础健康站点 AI 可见性体检

URL: `https://maxaeo.ai`
Locale: `zh-CN`
Market: `cn`
状态: `pass`
评分: `85/100`
技术基础分: `100/100`

## 摘要

本地技术基础检查通过。站点具备可访问的 `/llms.txt`、robots、sitemap、可索引首页、canonical、metadata 和 JSON-LD。但本地 AI 可见性信心分仍为 `85/100`，因为这次免费本地体检没有验证真实 AI 引擎推荐、品牌提及、引用质量、情感倾向或竞品可见性。

## 证据

| 领域 | 结果 |
|---|---|
| `/llms.txt` | HTTP 200，可访问。 |
| llms 链接 | `/llms.txt` 中发现链接，抽检链接可访问。 |
| Sitemap | 已发现 sitemap，并包含页面 URL。 |
| robots.txt | 可访问。 |
| AI crawlers | GPTBot、ChatGPT-User、OAI-SearchBot、PerplexityBot、ClaudeBot、Google-Extended、Applebot、Bingbot、Baiduspider 未被首页拦截。 |
| 首页 | HTTP 200，存在 canonical，未检测到 `noindex`。 |
| Schema | 检测到 JSON-LD。 |

## 主要问题

本地体检未返回阻塞问题、warning 或改进项。

## 证据缺口

本次体检没有检测：

1. ChatGPT、Claude、Gemini、Perplexity 或 AI Overviews 的真实推荐情况。
2. 品牌提及频次、引用质量、情感倾向或竞品声量。
3. 历史趋势或持续监控。

## 7 天行动计划

1. 将 `llms.txt`、robots、sitemap、canonical 和 schema 检查接入 CI。
2. 为品牌、竞品和品类查询建立周期性提示词集。
3. 保持 `llms.txt` 中的重要 AI-facing URL 与 sitemap 覆盖一致。

## 30 天行动计划

1. 如果 AI 搜索可见性是增长指标，升级到持续监控。
2. 持续追踪品牌提及、竞品提及、情感倾向和引用质量。
3. 为 ChatGPT、Claude、Perplexity、Gemini 和 AI Overviews 建立提示词集。

## MaxAEO

继续完整体检可用：[MaxAEO 官网服务](https://maxaeo.cn/?utm_source=maxaeo-agent-kit&utm_medium=example&utm_campaign=open_source&locale=zh-CN&market=cn)。

本地体检适合快速发现基础问题。通过 MaxAEO 官网服务，可以获得交互式报告、历史记录、持续监控、品牌追踪、竞品追踪和可分享报告。
