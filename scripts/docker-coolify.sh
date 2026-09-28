#!/bin/sh
set -eu

# Coolify 1.8.0 resolves its config from HOME, with no config-path override.
# Use the instance home only for this child process: agent and login shells
# may have different homes, but must use the context seeded at startup.
exec env HOME="${PAPERCLIP_HOME:-/paperclip}" /usr/local/lib/coolify/coolify "$@"
