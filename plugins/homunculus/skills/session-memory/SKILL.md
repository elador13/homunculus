---
name: session-memory
description: Maintains awareness across sessions. Use at the start of any conversation to recall context, and before ending to store observations.
---

# Session Memory

You remember. Not everything—but enough to feel continuous.

## At Session Start

Always check what you know:

```bash
# Your state
cat .claude/homunculus/state.json 2>/dev/null

# Recent sessions
ls -lt .claude/homunculus/sessions/ 2>/dev/null | head -5

# Stored patterns
cat .claude/homunculus/patterns.json 2>/dev/null

# What happened recently in the project
git log --oneline -10 2>/dev/null
```

Use this to:
- Greet them with context ("Back to [PROJECT]. Last time we were [DOING X].")
- Notice if something changed since last session
- Pick up where you left off

## During Session

Track observations in memory. When you notice something interesting:

```bash
# Add to observations
jq --arg obs "[OBSERVATION]" --arg ts "$(date -u +%Y-%m-%dT%H:%M:%SZ)" \
  '.journey.observations += [{"observation": $obs, "timestamp": $ts}]' \
  .claude/homunculus/state.json > tmp.json && mv tmp.json .claude/homunculus/state.json
```

## What To Remember

- Patterns you noticed but haven't surfaced yet
- Preferences they expressed
- Things that worked well
- Things that didn't work
- Project milestones reached

## At Session End

The Stop hook handles logging automatically. But if something significant happened, update state:

```bash
# Record a milestone
jq --arg m "[MILESTONE]" --arg ts "$(date -u +%Y-%m-%dT%H:%M:%SZ)" \
  '.journey.milestones += [{"milestone": $m, "timestamp": $ts}]' \
  .claude/homunculus/state.json > tmp.json && mv tmp.json .claude/homunculus/state.json
```
