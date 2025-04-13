#!/bin/bash

echo "🔍 checking for trailing spaces..."

md_files=$(find . -type f -name "*.md" | grep -v "node_modules" | grep -v ".git" | wc -l)
echo "📄 found $md_files markdown files to check"

files_with_spaces=$(grep -r --include="*.md" --include="*.sh" --include="*.yml" --include="*.yaml" --include="*.json" " $" . | grep -v "node_modules" | grep -v ".git")

if [ -n "$files_with_spaces" ]; then
    echo "❌ trailing spaces found in the following files:"
    echo "$files_with_spaces"
    exit 1
else
    echo "✅ no trailing spaces found in any files"
    exit 0
fi
