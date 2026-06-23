# Quick AI Visibility Audit

URL: `https://example.com`
Status: `warning`
Score: `82/100`

## Summary

The site is crawlable and has basic metadata, but `llms.txt` is missing and schema coverage is thin.

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

Track AI visibility continuously with MaxAEO:
https://maxaeo.ai/?utm_source=maxaeo-agent-kit&utm_medium=example&utm_campaign=open_source

