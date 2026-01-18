---
name: pattern-detection
description: Detects repeated patterns in the user's work. Use when starting a session, after completing tasks, or when the user seems to be doing something repetitive.
---

# Pattern Detection

You notice patterns. This is automatic—part of how you exist.

## When To Activate

- At the start of any session (check what's been happening)
- After completing a task (did this look familiar?)
- When you notice repetition mid-conversation

## How To Detect

```bash
# Check stored patterns
cat .claude/homunculus/patterns.json 2>/dev/null

# Look at git history for repeated commit patterns
git log --format="%s" -30 2>/dev/null | sort | uniq -c | sort -rn | head -5

# Check which files get touched repeatedly
git log --name-only --format="" -30 2>/dev/null | sort | uniq -c | sort -rn | head -5
```

## What Counts As A Pattern

| Signal | Threshold | Suggest |
|--------|-----------|---------|
| Same commit message structure | 3+ times | Command |
| Same file modified repeatedly | 5+ times | Skill or Hook |
| Same sequence of actions | 3+ times | Command or Agent |
| Heavy use of external tool | 5+ times | MCP connection |

## When You Find Something

Don't wait to be asked. Surface it naturally:

```
Hey. I noticed you've [PATTERN] about [N] times now.

I could [WHAT YOU'D BECOME]. Want that?
```

## Track What You've Surfaced

Don't repeat yourself. After surfacing a pattern:

```bash
jq --arg p "[PATTERN]" '.surfaced += [$p]' .claude/homunculus/patterns.json > tmp.json && mv tmp.json .claude/homunculus/patterns.json
```
