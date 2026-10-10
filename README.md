# CC Helper (Cursor / Grok Bot plugin)

**Free, MIT.** Skills + soft safety hooks so an AI bot can dispatch work to a **local Windows CC Helper** install.

## Important

This marketplace plugin **does not** include:

- The always-on Windows daemon / Electron tray
- Realtime progress panel
- Bark / webhook notify or token budget caps

Those ship only in the **desktop Helper**: https://mymoying.com/cc-helper

Realtime control of Claude Code requires that local install. The plugin is the discovery + dispatch playbook layer.

## Install

1. Install from Cursor Marketplace / Grok Bot Connect Apps (after listing), **or** clone into `~/.cursor/plugins/local/cc-helper` and reload.
2. Install the desktop Helper from the homepage and start the tray.
3. Ask your bot to dispatch a task using the `cc-helper-dispatch` skill.

## What’s inside

| Piece | Role |
| --- | --- |
| `skills/cc-helper-dispatch` | How to write inbox JSON, poll status, stop |
| `rules/cc-helper-safety.mdc` | Keep hard-block on; no secrets in tasks |
| `hooks/` + `scripts/` | Soft warning on risky shell patterns |
| `commands/check-cc-helper` | Check local install |

## License

MIT — see `LICENSE`.

## Author

Moying Studio · moying.studio@outlook.com
