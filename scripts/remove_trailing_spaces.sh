#!/bin/bash

search_dir=${1:-.}
file_patterns=(
    "*.md"
    "*.txt"
    "*.py"
    "*.js"
    "*.ts"
    "*.jsx"
    "*.tsx"
    "*.css"
    "*.scss"
    "*.html"
    "*.sh"
    "*.yaml"
    "*.yml"
    "*.json"
)

echo "👾 removing trailing spaces from files in $search_dir..."

modified_files=0
for pattern in "${file_patterns[@]}"; do
    while ifs= read -r file; do
        if [ -f "$file" ]; then
            tmp_file=$(mktemp)
            sed 's/[[:space:]]*$//' "$file" > "$tmp_file"
            if ! cmp -s "$file" "$tmp_file"; then
                mv "$tmp_file" "$file"
                echo "✅ removed trailing spaces from: $file"
                ((modified_files++))
            else
                rm "$tmp_file"
            fi
        fi
    done < <(find "$search_dir" -type f -name "$pattern")
done

echo "✅ done! modified $modified_files files." 
