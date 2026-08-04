# Interview prep — questions the deck invites that need YOUR answers

A mock interview panel generated the hardest questions this deck provokes. Nine of
ten had gaps the deck can't cover — the material must come from your memory. Write
answers here (or just rehearse them); none of this appears in the published deck.

1. **"What was the system-design strategy the senior engineer shared?"** (slide 11)
   The deck's biggest teaser, on the closing slide. One or two sentences + a
   60-second worked example from Tasks.

2. **"Walk me through the disagreement with the engineer you'd given ownership to."**
   (slides 7/10/11) What the design dispute was, what you actually did, how it
   ended, the relationship after.

3. **"Why was history across four temporal tables so hard, and what would you use
   instead?"** (slides 7/10) The mechanics of the pain, and the alternative design
   you'd now choose (e.g. explicit activity log at mutation time, temporal tables
   kept for audit only — if that's what you'd actually say).

4. **"Near-realtime how?"** (slides 2/5) The actual delivery mechanism — polling
   interval? push? — and typical latency, given refresh-on-change.

5. **"Six months to first reported bug — what did QA and monitoring look like?"**
   (slide 9) The detection story: testing approach, review practices, error
   monitoring, defects caught internally pre-GA.

6. **"What specifically did you cut for MVP?"** (slides 3/5) 2–3 concrete cuts by
   name, one tempting cut you kept, and the rule used to decide.

7. **"Did the legacy sunset actually complete?"** (slide 6) The true end state —
   how many practices were off legacy when you left; what happened with holdouts.

8. **"What exactly was broken about legacy Tasking?"** (slide 3) 2–3 specific
   failure modes, and how the new design avoided repeating them.

9. **"Sequencing everything up front sounds like waterfall — when was the plan
   wrong?"** (slide 8) One concrete example of divergence and correction.

Fully prepared already (per the panel): "why run both systems instead of
migrating, and how did you keep dual support from eating the team?"

Also confirm two on-slide claims are ones you'd own under follow-up:
- Slide 10's remedies ("prototype the hardest read path first"; "agree decision
  rights at handoff") — have you actually done these since?
- Slide 4's "where was product?" — know your counterparts and the ownership split.
