#!/bin/bash

# YOLO Badge Helper Script
# Creates a PR that you should merge WITHOUT review

echo "🚀 YOLO Badge Helper"
echo "===================="
echo ""
echo "This script creates a branch ready for a YOLO merge!"
echo ""
echo "IMPORTANT: When you create the PR, merge it IMMEDIATELY"
echo "without requesting any reviews. That's how you earn YOLO!"
echo ""
read -p "Press Enter to create YOLO branch..."

cd "$(dirname "$0")/.."

# Make sure we're on main
git checkout main 2>/dev/null || git checkout master

# Create YOLO branch
BRANCH="yolo/merge-without-review"

echo ""
echo "Creating YOLO branch..."
git checkout -b "$BRANCH"

# Create YOLO file
mkdir -p yolo-features
echo "# YOLO Feature" > "yolo-features/yolo.md"
echo "" >> "yolo-features/yolo.md"
echo "## What is YOLO?" >> "yolo-features/yolo.md"
echo "" >> "yolo-features/yolo.md"
echo "YOLO = You Only Live Once" >> "yolo-features/yolo.md"
echo "" >> "yolo-features/yolo.md"
echo "In GitHub terms, it means merging a PR without code review!" >> "yolo-features/yolo.md"
echo "" >> "yolo-features/yolo.md"
echo "This is perfectly fine for:">> "yolo-features/yolo.md"
echo "- Personal projects" >> "yolo-features/yolo.md"
echo "- Documentation updates" >> "yolo-features/yolo.md"
echo "- Minor fixes" >> "yolo-features/yolo.md"
echo "- Quick experiments" >> "yolo-features/yolo.md"
echo "" >> "yolo-features/yolo.md"
echo "Created: $(date)" >> "yolo-features/yolo.md"

# Commit
git add "yolo-features/yolo.md"
git commit -m "feat: add YOLO feature - merge without review! 🚀

This commit adds the YOLO feature. Merge this PR immediately
without waiting for code review to earn the YOLO badge!

YOLO = You Only Live Once!"

echo "✅ YOLO branch created!"
echo ""
echo "================================================"
echo "Next steps to earn YOLO badge:"
echo "================================================"
echo ""
echo "1. Push branch:"
echo "   git push origin $BRANCH"
echo ""
echo "2. Go to GitHub and create Pull Request"
echo ""
echo "3. IMMEDIATELY click 'Merge pull request'"
echo "   (Don't request reviews, don't wait!)"
echo ""
echo "4. Confirm merge"
echo ""
echo "5. Check your profile for the YOLO badge! 🚀"
echo ""
echo "Your branch: $BRANCH"
echo ""
