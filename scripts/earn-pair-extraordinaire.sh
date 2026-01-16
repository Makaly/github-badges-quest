#!/bin/bash

# Pair Extraordinaire Badge Helper Script
# Creates commits with co-authors

echo "👥 Pair Extraordinaire Badge Helper"
echo "===================================="
echo ""
echo "This script creates commits with co-authors."
echo ""
echo "Badge requirements:"
echo "- Bronze: 1 merged PR with co-author"
echo "- Silver: 10 merged PRs"
echo "- Gold: 24 merged PRs"
echo ""
read -p "How many co-authored commits? (recommended: 24): " COUNT

if [ -z "$COUNT" ]; then
  COUNT=24
fi

echo ""
echo "Enter co-author details (or press Enter for defaults):"
read -p "Co-author name [Linus Torvalds]: " CO_NAME
read -p "Co-author email [torvalds@linux-foundation.org]: " CO_EMAIL

CO_NAME=${CO_NAME:-Linus Torvalds}
CO_EMAIL=${CO_EMAIL:-torvalds@linux-foundation.org}

cd "$(dirname "$0")/.."

# Make sure we're on main
git checkout main 2>/dev/null || git checkout master

for i in $(seq 1 $COUNT); do
  echo ""
  echo "Creating co-authored commit $i of $COUNT..."

  BRANCH="pair/coauthor-$i"

  # Create branch
  git checkout -b "$BRANCH"

  # Create unique file
  mkdir -p pair-programming
  echo "# Pair Programming Feature $i" > "pair-programming/pair-$i.md"
  echo "" >> "pair-programming/pair-$i.md"
  echo "This feature was developed with pair programming!" >> "pair-programming/pair-$i.md"
  echo "" >> "pair-programming/pair-$i.md"
  echo "Co-authored by: $CO_NAME" >> "pair-programming/pair-$i.md"
  echo "Date: $(date)" >> "pair-programming/pair-$i.md"

  # Commit with co-author
  git add "pair-programming/pair-$i.md"
  git commit -m "feat: add pair programming feature $i

Implemented feature $i through pair programming session.

Co-authored-by: $CO_NAME <$CO_EMAIL>"

  # Back to main
  git checkout main 2>/dev/null || git checkout master

  echo "✅ Branch $BRANCH created with co-author!"
done

echo ""
echo "================================================"
echo "🎉 Created $COUNT co-authored commits!"
echo "================================================"
echo ""
echo "Next steps:"
echo "1. Push all branches: git push origin --all"
echo "2. Create PRs for each branch"
echo "3. Merge each PR (co-author credits apply when merged!)"
echo ""
echo "Co-author: $CO_NAME <$CO_EMAIL>"
echo ""
