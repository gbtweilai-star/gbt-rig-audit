#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_rig_audit info
PYTHONPATH=src python -m gbt_rig_audit check --payload '{}'
PYTHONPATH=src python -m gbt_rig_audit run   --payload '{}'
