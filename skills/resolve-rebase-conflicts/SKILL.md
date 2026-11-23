---
name: resolve-rebase-conflicts
description: Resolve file conflicts during an in-progress Git rebase while leaving all Git state changes to the user. Use when the user says "Fix the conflicts in the branch", says they are rebasing, asks to resolve rebase conflicts, or invokes /resolve-rebase-conflicts.
---

# Resolve rebase conflicts

Standard instruction:

> Fix the conflicts in the branch. I'm rebasing so just fix the conflict and I'll do mutating git operations

- Inspect the rebase using read-only Git commands.
- Resolve only conflicted files, preserving non-conflicting user changes.
- During a rebase, verify both sides instead of blindly choosing "ours" or
  "theirs".
- Check that no conflict markers remain. Ask about non-trivial decisions.
- Do not run Git commands that change state, including `git add`, `commit`,
  `rebase`, `reset`, `restore`, `checkout`, `stash`, `merge`, or `cherry-pick`.

List resolved files and remaining decisions. Leave staging and rebase
continuation to the user.
