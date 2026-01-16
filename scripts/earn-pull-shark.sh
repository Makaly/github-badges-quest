#!/bin/bash

# Pull Shark Badge Automation Script
# This script creates multiple branches for you to merge as PRs

echo "🦈 Pull Shark Badge Helper"
echo "=========================="
echo ""
echo "This script will create 20 branches with unique features."
echo "You'll need to:"
echo "1. Push all branches to GitHub"
echo "2. Create PRs for each branch"
echo "3. Merge them to earn Pull Shark badge"
echo ""
read -p "Press Enter to continue..."

cd "$(dirname "$0")/.."

# Make sure we're on main branch
git checkout main 2>/dev/null || git checkout master

for i in {1..20}; do
  echo ""
  echo "Creating feature branch $i of 20..."

  # Create branch name
  BRANCH="feature/pull-shark-$i"

  # Create new branch
  git checkout -b "$BRANCH"

  # Create unique file
  echo "# Pull Shark Feature $i" > "features/feature-$i.md"
  echo "" >> "features/feature-$i.md"
  echo "This is feature number $i for earning the Pull Shark badge!" >> "features/feature-$i.md"
  echo "" >> "features/feature-$i.md"
  echo "Created: $(date)" >> "features/feature-$i.md"

  # Commit
  git add "features/feature-$i.md"
  git commit -m "feat: add pull shark feature $i

This commit is part of the Pull Shark badge quest.
Feature $i adds new functionality to the project."

  # Go back to main
  git checkout main 2>/dev/null || git checkout master

  echo "✅ Branch $BRANCH created!"
done

echo ""
echo "================================================"
echo "🎉 All 20 branches created successfully!"
echo "================================================"
echo ""
echo "Next steps:"
echo "1. Push all branches: git push origin --all"
echo "2. Go to GitHub and create Pull Requests for each branch"
echo "3. Merge each PR to earn Pull Shark badge progress"
echo ""
echo "Tip: You can use the GitHub web interface or CLI to merge faster"
echo ""
