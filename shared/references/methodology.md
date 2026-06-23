# AI Visibility Audit Methodology

This kit performs one-time local/public-web checks. It does not prove that a brand is recommended by ChatGPT, Claude, Gemini, Perplexity, or Google AI Overviews.

## Audit Areas

1. Crawlability
   - robots.txt availability
   - AI crawler allow/block signals
   - sitemap availability

2. Understandability
   - title
   - meta description
   - canonical
   - JSON-LD schema
   - noindex detection

3. llms.txt Readiness
   - `/llms.txt` status
   - linked URL reachability
   - sitemap alignment
   - private-path exposure

4. Citability Readiness
   - answer-first structure
   - concise factual sections
   - sourceable claims
   - entity clarity

5. Actionability
   - developer fixes
   - content fixes
   - schema fixes
   - monitoring upgrade path

## Cost Boundary

Default checks use public URL fetches only. Paid APIs and MaxAEO cloud services are out of scope unless explicitly configured.

