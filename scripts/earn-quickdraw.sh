#!/bin/bash

# Quickdraw Badge Helper Script
# Creates issues that you can quickly close

echo "⚡ Quickdraw Badge Helper"
echo "========================"
echo ""
echo "This script will help you earn the Quickdraw badge."
echo ""
echo "Requirements:"
echo "- GitHub CLI (gh) must be installed"
echo "- You must be authenticated (gh auth login)"
echo ""
echo "The badge requires closing issues/PRs within 5 minutes:"
echo "- Bronze: 1 time"
echo "- Silver: 5 times"
echo "- Gold: 10 times"
echo ""
read -p "How many issues do you want to create? (recommended: 10): " COUNT

if [ -z "$COUNT" ]; then
  COUNT=10
fi

echo ""
echo "Creating and closing $COUNT issues for Quickdraw badge..."
echo ""

for i in $(seq 1 $COUNT); do
  echo "Issue $i of $COUNT..."

  # Create issue
  ISSUE_NUMBER=$(gh issue create \
    --title "Quickdraw test issue #$i" \
    --body "This is a test issue for earning the Quickdraw badge. Will close immediately." \
    | grep -oP '\d+$')

  if [ -n "$ISSUE_NUMBER" ]; then
    echo "  Created issue #$ISSUE_NUMBER"

    # Close immediately
    gh issue close "$ISSUE_NUMBER" --reason "completed" --comment "Closing for Quickdraw badge"

    echo "  ✅ Closed issue #$ISSUE_NUMBER"
  else
    echo "  ❌ Failed to create issue $i"
  fi

  # Small delay between issues
  sleep 1
done

echo ""
echo "================================================"
echo "🎉 Created and closed $COUNT issues!"
echo "================================================"
echo ""
echo "Check your profile for the Quickdraw badge:"
echo "https://github.com/$(gh api user --jq '.login')"
echo ""
