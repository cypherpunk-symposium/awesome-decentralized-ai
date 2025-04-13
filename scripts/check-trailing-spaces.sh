#!/bin/bash

# Check for trailing spaces in files
echo "🔍 Checking for trailing spaces..."

# Find files with trailing spaces
files_with_spaces=$(grep -r --include="*.md" --include="*.sh" --include="*.yml" --include="*.yaml" --include="*.json" " $" . | grep -v "node_modules" | grep -v ".git")

if [ -n "$files_with_spaces" ]; then
    echo "❌ Trailing spaces found in the following files:"
    echo "$files_with_spaces"
    exit 1
else
    echo "✅ No trailing spaces found"
    exit 0
fi 