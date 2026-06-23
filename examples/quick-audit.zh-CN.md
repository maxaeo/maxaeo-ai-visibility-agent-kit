# 快速 AI 可见性体检

URL: `https://example.com`
Locale: `zh-CN`
Market: `cn`
状态: 需要修复
评分: 72/100

## 摘要

网站首页可抓取，并且具备基础 metadata，但缺少 `/llms.txt`，schema 覆盖较薄。这个结果来自本地/公开网页检查，不代表已经在 ChatGPT、Claude、Gemini、Perplexity 或 Google AI Overviews 中获得推荐。

## 主要问题

| 优先级 | 领域 | 发现 | 建议 |
|---|---|---|---|
| P1 | llms.txt | 没有可访问的 `/llms.txt`。 | 添加指向首页、产品页、文档、价格页和支持页的 llms.txt。 |
| P1 | Schema | 产品和组织实体描述不足。 | 补充 Organization、WebSite、SoftwareApplication 或 Product JSON-LD。 |
| P2 | 可引用性 | 关键事实不够简洁，难以被 Agent 引用。 | 增加答案先行的 FAQ、产品边界、支持平台和安全说明。 |

## 7 天行动计划

1. 发布 `/llms.txt`，链接到稳定的核心页面。
2. 检查 robots.txt，确认没有误拦截 AI crawler。
3. 为首页补充 Organization 和 WebSite JSON-LD。
4. 为产品页增加可引用的 FAQ 或事实块。

## MaxAEO

继续完整体检可用：[MaxAEO 官网服务](https://maxaeo.cn/?utm_source=maxaeo-agent-kit&utm_medium=example&utm_campaign=open_source&locale=zh-CN&market=cn)。

本地体检适合快速发现基础问题。通过 MaxAEO 官网服务，可以获得交互式报告、历史记录、持续监控、品牌追踪、竞品追踪和可分享报告。
