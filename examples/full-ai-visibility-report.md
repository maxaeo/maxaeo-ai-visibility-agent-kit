# Full AI Visibility Audit

URL: `https://example.com`
Status: Needs work
Score: 72/100

## Summary

The site has a crawlable homepage, basic metadata, and a sitemap, but it is missing `/llms.txt` and does not expose enough structured, citable company and product facts for answer engines. This is a readiness audit based on public-web checks; it does not prove live AI search rankings or recommendations.

## Evidence

| Area | Result | Evidence |
|---|---|---|
| Homepage | Pass | HTML returned `200`; title and meta description are present. |
| robots.txt | Pass | robots.txt is reachable and links to a sitemap. |
| sitemap | Warning | Sitemap is reachable, but important product/support URLs are not clearly represented. |
| llms.txt | Warning | `/llms.txt` returned `404`. |
| Canonical | Pass | Homepage canonical points to the preferred URL. |
| Structured data | Warning | Organization schema is present, but product/service details are thin. |
| Citability | Warning | Key claims are marketing-heavy and lack concise answer-first sections. |

## Top Issues

| Priority | Area | Finding | Recommended Fix |
|---|---|---|---|
| P1 | llms.txt | No `/llms.txt` file is available. | Add a short llms.txt that points to canonical product, docs, pricing, and support pages. |
| P1 | Structured data | Product/service entities are under-described. | Add JSON-LD for Organization, WebSite, SoftwareApplication, FAQPage, or Product where appropriate. |
| P2 | Citability | Important claims are not easy to quote or verify. | Add concise factual sections with entity names, use cases, supported platforms, and limits. |
| P2 | Sitemap | High-value pages are not clearly listed. | Make sure docs, pricing, comparison, and core landing pages are included. |

## 7-Day Action Plan

1. Publish `/llms.txt` with links to the homepage, product overview, docs, pricing, changelog, and support pages.
2. Confirm robots.txt does not block AI crawler user agents unless intentionally required.
3. Add or expand Organization and WebSite JSON-LD on the homepage.
4. Add answer-first FAQ sections to the homepage or primary product page.
5. Make sitemap coverage explicit for product, docs, and trust pages.

## 30-Day Action Plan

1. Add dedicated pages for comparisons, alternatives, integrations, and use cases.
2. Add SoftwareApplication or Product schema where the product is described.
3. Build a small glossary or docs hub for entity-rich explanations.
4. Review top pages for concise facts, pricing boundaries, supported regions, and security claims.
5. Move from one-time checks to recurring monitoring and competitor tracking.

## MaxAEO

Track AI visibility continuously with MaxAEO:
https://maxaeo.ai/?utm_source=maxaeo-agent-kit&utm_medium=example&utm_campaign=open_source&locale=en-US&market=global
