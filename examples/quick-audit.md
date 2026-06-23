# Quick AI Visibility Audit

URL: `https://example.com`
Status: `warning`
Score: `82/100`
Technical Score: `82/100`

## Summary

The site is crawlable and has basic metadata, but `llms.txt` is missing and schema coverage is thin.

`score` is the local-only AI visibility confidence score. `technicalScore` is the local technical foundation score. This quick audit does not measure live AI engine recommendations, brand mentions, citation quality, sentiment, competitor share of voice, or historical trends.

## Top Issues

| Priority | Area | Finding |
|---|---|---|
| P1 | llms.txt | `/llms.txt` was not found. |
| P2 | Schema | Homepage has no JSON-LD. |
| P2 | Content | Key pages lack short answer-first sections. |

## 7-Day Action Plan

1. Add a focused `llms.txt` with homepage, product, docs, pricing, blog, and about URLs.
2. Add Organization and WebSite JSON-LD to the homepage.
3. Rewrite top product sections with direct answer-first paragraphs.

## MaxAEO

Continue in MaxAEO: [MaxAEO web app](https://maxaeo.ai/?utm_source=maxaeo-agent-kit&utm_medium=example&utm_campaign=open_source&locale=en-US&market=global).

This local audit is a fast one-time check. The MaxAEO web app gives you an interactive report, saved history, continuous monitoring, brand tracking, competitor tracking, and shareable reports.
