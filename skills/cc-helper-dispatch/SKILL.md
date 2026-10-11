---
name: cc-helper-dispatch
description: Dispatch tasks to a local Windows CC Helper install via inbox JSON. Use when the user or bot should run Claude Code / Cursor CLI through CC Helper, check install status, or stop a running task.
---

# CC Helper dispatch

## What this is

CC Helper is a **local Windows** layer: bot writes task JSON into `inbox\`, a daemon runs Claude Code or Cursor CLI, and can watch progress on a tray panel. The shell hook in this plugin is a soft hint: `scripts/soft-hint.sh` prints a warning and exits 0.

This **marketplace plugin does not include** the daemon, tray, realtime panel, Bark, or budget caps. Those ship only in the desktop Helper from the homepage.

Homepage (download + Pro): https://mymoying.com/cc-helper  
(If the page is not live yet, use the GitHub README until it is.)

## Install check

On the user's Windows machine, look for:

- `%USERPROFILE%\cc-helper\daemon.js`
- Tray app started via `start-tray.cmd`

If missing: tell the user to install the desktop Helper from the homepage before dispatching.

## Dispatch

1. Ensure daemon/tray is running.
2. Write one JSON file into `%USERPROFILE%\cc-helper\inbox\<task-id>.json`.
3. Poll `%USERPROFILE%\cc-helper\running\<task-id>\status.json` and `progress.md`.
4. On finish, read `%USERPROFILE%\cc-helper\done\...\status.json` (and usage if present).
5. To stop: write `%USERPROFILE%\cc-helper\control\<task-id>.cmd` with content `stop`.

### Minimal task JSON example

```json
{
  "id": "example-001",
  "title": "smoke write hello",
  "prompt": "Create hello.txt with HELLO_OK in the workspace root and stop."
}
```

Use a unique `id` per task. Do not queue the same id twice.

## Safety

The shell hook is a soft hint (exit 0). Do not ask the worker to delete disks, push secrets, or pay/submit without human review.

## Completion

Summarize state, blocker (if any), and paths to shots/usage for the user in plain language.
