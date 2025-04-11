#!/bin/bash

check_url() {
    local url=$1
    if curl --output /dev/null --silent --head --fail "$url"; then
        echo "✅ $url"
        return 0
    else
        return 1
    fi
}

echo "👾 checking links in README.md..."
urls=$(grep -o 'https://[^)]*' README.md)

broken_links=()
valid_links=0

for url in $urls; do
    if check_url "$url"; then
        valid_links=$((valid_links + 1))
    else
        broken_links+=("$url")
    fi
done

echo "\n👾 link check complete!"
echo "✅ $valid_links valid links found\n"

if [ ${#broken_links[@]} -gt 0 ]; then
    echo "\n⚠️  ${#broken_links[@]} broken links found:"
    echo "----------------------------------------"
    for link in "${broken_links[@]}"; do
        echo "🔗 $link"
    done
    echo "----------------------------------------\n"
fi

exit 0 