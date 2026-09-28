# Codex
AI-powered centralized documentation platform - scheduled doc audits, ticket gap analysis, and L1 ticket assistance for IT helpdesk teams. 

## The problem
Companies waste time and resources due to documentation not being accessible enough. Employees will often waste time trying to find documentation they are looking for, and if it’s too difficult to find, might even waste time figuring out how to fix something that’s already been solved before. This pain is especially seen in level 1 tickets where issues with well-known fixes end up clogging up analyst's ticket cue and take time away from tackling new problems. ‘AI-powered tools have driven a 55% reduction in average first response time, and AI agents now deflect over 45% of incoming queries’ (Unthread, 2024).

## The solution
We solve this problem by creating a centralized place for documentation to live that prioritizes easy access from many locations. A place that is empowered by scheduled audits to ensure documents stay updated and accurate, as well as making sure the AI can analyze tickets to see if there are any gaps in technical documents needed.

- **Centralized documentation** with AI-powered retrieval from many locations.
- **Documentation Audit Agent** - scheduled full audits that flag redundant or
  overlapping docs, outdated information, and docs that haven't been used
  recently, with suggested fixes.
- **Ticketing Gap Analysis Agent** - parses helpdesk tickets to detect missing
  documentation and suggest needed docs.
- **L1 ticket assistance** - automatically suggests helpful documents on level 1
  tickets while end-users wait for a response.
- **Shared AI framework** - both agents pull context (docs + ticket history)
  from the same sources, so information stays accurate and consistent.
- **Automated, prioritized reporting** - ticket gap reports and documentation
  reports, ranked by frequency/impact. No manual review needed.
- **Scalable core** - new agents for other workflows can be added later without
  intensive redesign.

## Tech stack
- LLM provider (TBD)
- SQLite for structured storage
- CSV/JSON synthetic data for development and testing
- HTML frontend
- Git / GitHub for version control

## Timeline

| # | Task | Duration | Dates |
|---|------|----------|-------|
| 1 | Project Kickoff & Team Planning | 2 weeks | 8/24/2026 – 9/3/2026 |
| 2 | Research & Data Analysis | 1 month | 9/3/2026 – 10/12/2026 |
| 3 | System Design and Preparation | 2 weeks | 10/13/2026 – 10/26/2026 |
| 4 | AI Core Research and Development | 1.5 months | 10/27/2026 – 12/12/2026 |
| 5 | Agents Research and Development | 1.5 months | 12/17/2026 – 2/11/2027 |
| 6 | System Integration | 1 month | 2/12/2027 – 3/12/2027 |
| 7 | Testing and Refinement | 1 month | 3/13/2027 – 4/12/2027 |
| 8 | Finalization and Presentation | 2 weeks | 4/13/2027 – 4/30/2027 |

## Team Members / Responsibilities
- Zachary Hopkins – Team Lead, in charge of project vision and smooth progression of project
-	Sebastien Schmitz – AI Implementation and Backend Development, in charge of implementing the AI agents into this environment as well as developing the backend framework.
-	Adam Salah Adawi – Data and Testing Lead, in charge of testing agent outputs, evaluate accuracy and improve overall performance.
-	Khagendra Dhungel – Full Stack Developer, responsible for creating user facing and server side 


