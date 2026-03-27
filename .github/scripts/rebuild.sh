#!/usr/bin/env bash
set -euo pipefail

# Rebuild script for opencloud-eu/docs
# Runs on existing source tree (no clone). Installs deps and builds.
# Docusaurus 3.9.2, pnpm@9.15.4, Node 20+

echo "=== Node version: $(node --version) ==="

# --- Install pnpm ---
export COREPACK_ENABLE_DOWNLOAD_PROMPT=0
export COREPACK_ENABLE_STRICT=0
npm install -g pnpm@9.15.4

echo "=== pnpm version: $(pnpm --version) ==="

# --- Install dependencies ---
pnpm install --frozen-lockfile

# --- Build ---
pnpm run build

echo "[DONE] Build complete."
