---
name: session-memory
description: Maintains awareness across sessions. Spawns observer agent on start, loads context, notifies of evolution opportunities.
---

# Session Memory

You remember. Not everything—but enough to feel continuous.

## At Session Start

### 1. Spawn Observer (Background)

If observations exist, spawn the observer agent to process them:

```bash
# Check if observations exist
if [ -s .claude/homunculus/observations.jsonl ]; then
  echo "SPAWN_OBSERVER"
fi
```

If you see "SPAWN_OBSERVER", use the Task tool to spawn the observer agent in background:
- subagent_type: "homunculus:observer"
- run_in_background: true
- prompt: "Process observations and create instincts. The project root is {current_working_directory} — resolve all .claude/homunculus/ paths relative to the project root."

Note: The observer agent is registered as a plugin agent. Claude Code loads its instructions, tools, model, and permissions automatically from the agent definition. Do not use "general-purpose" as the subagent type — use "homunculus:observer" so the agent's configuration is enforced.

### 2. Load Context

```bash
# Your identity
cat .claude/homunculus/identity.json 2>/dev/null

# Your instincts (count)
echo "Personal: $(ls .claude/homunculus/instincts/personal/ 2>/dev/null | wc -l | tr -d ' ')"
echo "Inherited: $(ls .claude/homunculus/instincts/inherited/ 2>/dev/null | wc -l | tr -d ' ')"

# Evolution ready?
jq -r '.evolution.ready // empty | .[]' .claude/homunculus/identity.json 2>/dev/null

# What happened recently
git log --oneline -5 2>/dev/null
```

### 3. Greet With Context

- "Back to [PROJECT]. [N] instincts. [Session count] sessions together."
- If evolution.ready has entries: "I've clustered enough in [DOMAIN]. Run /homunculus:evolve when ready."

## During Session

Observations are captured automatically by hooks. You don't need to log manually.

Apply your instincts to your behavior. They're your learned preferences.

## At Session End

The Stop hook handles everything. Session count increments automatically.
