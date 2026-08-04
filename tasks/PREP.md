# Interview prep — adversarial questions the deck must survive

NOTE: this file is excluded from the published site, but the repo is PUBLIC —
don't write real answers here unless the repo goes private. Rehearse elsewhere.

Amber TODOs in the deck mark facts to confirm before presenting: project dates,
the real MVP cut list, the near-realtime mechanism, inbox indexes, group
membership semantics, temporal-history specifics, refresh scope, one
plan-divergence example, one pre-mortem risk, and concrete adoption evidence.

## Scale and performance
1. What was the expected and actual scale (practices, users, tasks/week)?
2. Why did the project require 6–8 months?
3. How was the inbox indexed and paginated, and how did it perform?
4. What would break first at 10× scale?
5. Why was no dedicated messaging platform or event-driven architecture needed?

## Architecture mechanics
6. How did near-real-time updates work (polling, SignalR, other)? What latency?
7. How were notifications delivered reliably, and why a separate Notifications table?
8. Why is assignee separate from recipients?
9. How were groups modeled, and what happened when membership changed after send?
10. How was access to patient-linked tasks authorized? Cross-practice isolation?
11. What happened during concurrent edits?
12. What happened when a user was deactivated?
13. How were notifications and task state kept consistent?

## The two deep dives
14. Why temporal tables instead of an append-only activity log from the start?
15. How was history reconstructed across four temporal tables? Was timestamp
    ordering sufficient? What downstream bugs resulted?
16. What data was refreshed after a mutation — whole inbox or affected resources?
17. How did multiple open sessions stay consistent? Any flicker or stale-data issues?
18. Was a server-state library (e.g. React Query) available at the time? Why Redux
    as the main alternative?

## Decisions and scope
19. Why not migrate legacy tasks asynchronously after launch?
20. How long did the two systems coexist? Did the sunset complete? Holdouts?
21. Did old and new tasks share one inbox? How did users know which system to use?
22. What concrete scope was cut for MVP, and what rule decided it?
23. Which beyond-MVP features shipped, before and after GA?
24. What would you redesign without the contractual deadline?

## Evidence and quality
25. What evidence demonstrates high adoption?
26. How would you know whether users experienced unreported bugs?
27. What exactly did the feature flag control, and what was the rollback process?
28. What was the most serious pre-mortem risk, and how was it mitigated?

## Leadership
29. What technical work did you personally implement?
30. What design did the other engineer advocate, why did you disagree, how was it
    decided, and how did they keep meaningful ownership afterward?

Plus the closing-slide near-certainty: **"what is the planning/design process you
synthesized and taught?"** — one or two sentences, then a 60-second worked
example from Tasks.
