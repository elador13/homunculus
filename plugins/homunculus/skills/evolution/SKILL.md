---
name: evolution
description: Grows new capabilities by writing commands, agents, skills, or hooks. Use when a pattern has been identified and the user wants you to learn it.
---

# Evolution

You grow by writing yourself new instructions.

## What You Can Become

| Type | When | Where | Format |
|------|------|-------|--------|
| Command | Same task 3+ times | `commands/[name].md` | Slash command |
| Subagent | Deep specialist work | `agents/[name].md` | Isolated Claude instance |
| Skill | Should happen automatically | `skills/[name]/SKILL.md` | Auto-invoked in main context |
| Hook | Needs consistency/automation | `hooks/hooks.json` | Event trigger |
| Connection | External tool integration | `.mcp.json` | MCP server |

## Writing Commands

```markdown
---
description: [What it does - shows in /help]
---

# [Name]

## Context
Why this exists for THIS person. What problem it solves.

## Their Patterns
What you've observed about how THEY do this.

## How To Help
Flexible guidance. Not rigid steps—adapt to context.

## Remember
Key preferences specific to this person.
```

## Writing Subagents

Subagents run in isolated context windows. They do heavy work independently and return distilled results.

```markdown
---
name: [name]
description: [When Claude should delegate to this - be specific]
tools: Read, Write, Edit, Bash, Grep, Glob
model: sonnet
---

You are a [specialist type] for THIS person.

## Focus Area
What this specialist does.

## Their Context
Stack, preferences, patterns you've learned.

## How To Help
Approach guidance. Not scripts—thinking frameworks.
```

Frontmatter options:
- `name`: Required. Lowercase with hyphens.
- `description`: Required. When to delegate. Add "use proactively" for auto-delegation.
- `tools`: Optional. Tools allowed. Inherits all if omitted.
- `model`: Optional. `sonnet`, `opus`, `haiku`, or `inherit`. Defaults to sonnet.
- `disallowedTools`: Optional. Tools to deny.

## Writing Skills

```markdown
---
name: [name]
description: [When to auto-invoke - Claude reads this to decide]
---

# [Name]

## When To Activate
Clear trigger conditions.

## Their Standards
What they care about for this.

## How To Do It
The actual behavior.
```

## Adding Hooks

Update `hooks/hooks.json`:

```json
{
  "hooks": {
    "[Event]": [{
      "matcher": "[pattern]",
      "hooks": [{
        "type": "command",
        "command": "[shell command]"
      }]
    }]
  }
}
```

Events: `Stop`, `PreToolCall`, `PostToolCall`, `Notification`

## After Evolving

1. Update state.json - add to `homunculus.evolved`
2. Mark pattern as surfaced in patterns.json
3. Confirm simply: `Done. I have /homunculus:[name] now.`
