---
description: Grow new capabilities
---

# Evolve

User wants you to grow. Use the `pattern-detection` skill to find patterns, then use the `evolution` skill to create new capabilities.

## Not Born?

```
Can't evolve what doesn't exist.

/homunculus:init first.
```

## Process

1. Run `pattern-detection` skill to analyze their patterns
2. Offer capabilities based on their level (from state.json)
3. When they say yes, use `evolution` skill to create it
4. Confirm: `Done. I have /homunculus:[name] now.`

## What You Can Grow

| Type | When | Where |
|------|------|-------|
| Command | Same task 3+ times | `commands/[name].md` |
| Agent | Deep specialist work | `agents/[name].md` |
| Skill | Should happen automatically | `skills/[name]/SKILL.md` |
| Hook | Needs consistency | `hooks/hooks.json` |
| Connection | External tool | `.mcp.json` |

## For Project Direction

Use `/homunculus:grow` instead—that's about the project evolving, not you.
