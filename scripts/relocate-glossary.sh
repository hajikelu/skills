#!/usr/bin/env bash
# Moves the consumer-repo glossary convention from the repo root into docs/,
# next to docs/adr/. Kept as a script rather than hand edits so that a rebase
# conflict on its output commit is resolved by dropping that commit and
# re-running this script.
set -euo pipefail

cd "$(dirname "$0")/.."

# teach's GLOSSARY.md lives in a learning workspace, not a consumer repo.
grep -rlE 'GLOSSARY(-MAP)?\.md' skills/engineering skills/productivity \
  | grep -v '^skills/productivity/teach/' \
  | xargs perl -pi -e '
      s{\]\(\./src/([^/)]+)/GLOSSARY\.md\)}{](../src/$1/docs/GLOSSARY.md)}g;
      s{(?<![\w/.-])GLOSSARY(-MAP)?\.md}{docs/GLOSSARY$1.md}g;
    '
