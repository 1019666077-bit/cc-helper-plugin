# Bot Bridge CC Helper

**For Cursor and Grok Bot.** A remote bot dispatches the work; a local Helper runs it.

**Free, MIT.** Skills + soft safety hooks so an AI bot can dispatch tasks into the **inbox** of a local **Bot Bridge CC Helper** install on Windows.

## Important

This marketplace plugin **does not** include:

- The always-on Windows daemon / Electron tray
- Realtime progress panel
- Bark / webhook notify or token budget caps

Those ship only in the **desktop Helper**: https://botbridge.dev/cc-helper

The plugin is the discovery + dispatch playbook layer: it tells the bot how to write a job into `inbox\`, poll progress, and stop a run. Progress tracking, budget caps, and stall kills need that local install. Its shell hook is a soft hint: `scripts/soft-hint.sh` prints a warning and exits 0.

## Install

1. Install from Cursor Marketplace / Grok Bot Connect Apps (after listing), **or** clone into `~/.cursor/plugins/local/cc-helper` and reload.
2. Install the desktop Helper from the homepage and start the tray.
3. Ask your bot to dispatch a task using the `cc-helper-dispatch` skill: it writes one job JSON into `inbox\`.

## What’s inside

| Piece | Role |
| --- | --- |
| `skills/cc-helper-dispatch` | How to write inbox JSON, poll status, stop |
| `rules/cc-helper-safety.mdc` | Soft hint only (exit 0); no secrets in tasks |
| `hooks/` + `scripts/` | Soft hint on risky shell patterns (`soft-hint.sh` exits 0) |
| `commands/check-cc-helper` | Check local install |

## What this is not

Not a Claude Code GUI, not a fork of Claude Code, and not an official extension. It wraps the Claude Code CLI you already have, and it is not made by, endorsed by, or affiliated with Anthropic or Cursor.

## License

MIT — see `LICENSE`.

## Author

Moying Studio · moying.studio@outlook.com
