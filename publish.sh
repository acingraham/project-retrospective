#!/bin/sh
# Publish the deck to GitHub Pages (gh-pages branch), with speaker notes
# stripped so presenter coaching never appears in the live page.
# Run from anywhere inside the repo: ./publish.sh
set -e

root=$(git rev-parse --show-toplevel)
remote=$(git -C "$root" remote get-url origin)
work=$(mktemp -d)

cp -R "$root/tasks/." "$work/"
touch "$work/.nojekyll"

python3 - "$work/index.html" <<'PY'
import re, sys
path = sys.argv[1]
html = open(path).read()
html = re.sub(r'[ \t]*<aside class="notes">.*?</aside>\n?', '', html, flags=re.S)
open(path, 'w').write(html)
PY

cd "$work"
git init -q -b gh-pages
git add -A
git commit -q -m "Publish deck"
git push -f "$remote" gh-pages:gh-pages

cd /
rm -rf "$work"
echo "Published. Live at: https://acingraham.github.io/project-retrospective/"
