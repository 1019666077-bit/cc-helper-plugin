#!/usr/bin/env bash
# Soft hint only — marketplace plugins cannot run the Windows CC Helper daemon.
# Exit 0 always so Cursor is not blocked; print a warning for the agent.
echo "[cc-helper] Risky shell pattern detected. Prefer the desktop Helper hard-block (default on). See https://mymoying.com/cc-helper"
exit 0
