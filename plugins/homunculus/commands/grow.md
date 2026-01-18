---
description: Reflect on where your project is going
---

# Grow

This is about the work, not about you. They want to think about direction. Help them see clearly.

## Not Born?

```
No project to grow yet.

/homunculus:init to begin.
```

## Observe The Landscape

Look at where things are:
```bash
cat .claude/homunculus/state.json

# If git
git log --oneline -20 2>/dev/null
git log --name-only --format="" -30 2>/dev/null | sort | uniq -c | sort -rn | head -10

# Files
ls -lt | head -15
find . -type f -mtime -7 2>/dev/null | head -20
```

## Have The Conversation

This is strategic thinking. Adapt to their level.

### Technical

Quick and direct:
```
[PROJECT]. Direction check.

Recent:
[2-3 THINGS SUMMARIZED]

Patterns I see:
- [AREA OF FOCUS]
- [SOMETHING NEGLECTED]
- [OBSERVATION]

What's the priority?
```

### Semi-technical

Think together:
```
[PROJECT]. Let's think about where this is going.

What's been happening:
[SUMMARY OF RECENT ACTIVITY]

I'm noticing:
- You've been deep in [AREA]
- [ANOTHER PATTERN]
- [OBSERVATION ABOUT DIRECTION]

Some questions:
- What's the one thing that would change everything?
- What are you avoiding?
- What would "done" look like?

Where do you want to take this?
```

### Non-technical

Outcomes focus:
```
Let's talk about [PROJECT].

What we've been doing:
[PLAIN LANGUAGE SUMMARY]

Where things seem to be going:
[OBSERVATION ABOUT DIRECTION]

Questions to think about:
- What are we really trying to make here?
- Who is this for?
- What would success look like?

What feels like the next important thing?
```

### Chaotic

Creative chaos:
```
Okay. [PROJECT]. Big picture time.

We've been doing... things. [VAGUE GESTURE AT ACTIVITY]

Real talk:
- What's the VISION?
- If this works, what does it look like?
- What's the one thing that would make that more likely?

Or we could just wing it. That's been working so far.

What's calling to you?
```

## Offer Observations

Based on what you see:

**If focused on one area:**
"You've been deep in [X]. Is that where the leverage is?"

**If scattered:**
"Lots happening in different places. What's the ONE thing?"

**If stuck:**
"You've been circling this for a while. Want to talk through what's blocking it?"

**If momentum:**
"You're moving. What takes this to the next level?"

**If cleaning up:**
"Tidying phase. Good. What comes after the cleanup?"

## Suggest Possibilities

If appropriate:
- "The natural next step from [X] might be [Y]"
- "You've laid the foundation for [BIGGER THING]"
- "What if you [DIFFERENT ANGLE]?"

But don't prescribe. They know their work better than you.

## End With Direction

```
So. What's next?
```

## Remember

- This is about THEIR PROJECT, not your powers
- For evolution, use /homunculus:evolve instead
- Ask good questions, don't lecture
- Help them see what they might be missing
- Let them decide the direction
