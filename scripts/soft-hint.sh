#!/usr/bin/env bash
# Soft hint only — marketplace plugins cannot run the Windows CC Helper daemon.
# Exit 0 always so Cursor is not blocked; print a warning for the agent.
echo "[cc-helper] Risky shell pattern detected. Soft hint only; this hook exits 0. See https://mymoying.com/cc-helper"
exit 0
