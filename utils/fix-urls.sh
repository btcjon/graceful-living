#!/bin/bash

# Script to fix absolute URLs in the site directory
# This will replace all references to the original domain with relative URLs

SITE_DIR="/Users/jonbennett/Dropbox/Coding-Main/graceful-living/site"
ORIGINAL_DOMAIN="https://harmony-care.cmsmasters.net"

echo "Fixing absolute URLs in HTML files..."

# Find all HTML files and replace absolute URLs with relative ones
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|$ORIGINAL_DOMAIN/main/|/|g" {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|$ORIGINAL_DOMAIN/|/|g" {} \;

# Fix form submission URLs and other specific cases
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' 's|current_url" value="https://harmony-care.cmsmasters.net/main/"|current_url" value="/"|g' {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' 's|url: '"'"'https://harmony-care.cmsmasters.net/main/wp-admin/admin-ajax.php'"'"'|url: '"'"'/wp-admin/admin-ajax.php'"'"'|g' {} \;

# Fix links to demo sites (these should be removed or replaced with local paths)
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' 's|href="https://harmony-care.cmsmasters.net/ivory-blue/"|href="#"|g' {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' 's|href="https://harmony-care.cmsmasters.net/chestnut-cream/"|href="#"|g' {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' 's|href="https://harmony-care.cmsmasters.net/pistachio-blue/"|href="#"|g' {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' 's|href="https://harmony-care.cmsmasters.net/peach-merlot/"|href="#"|g' {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' 's|href="https://harmony-care.cmsmasters.net/olive-garden/"|href="#"|g' {} \;

echo "Fixing absolute URLs in CSS files..."

# Find all CSS files and replace absolute URLs with relative ones
find "$SITE_DIR" -type f -name "*.css" -exec sed -i '' "s|$ORIGINAL_DOMAIN/main/|/|g" {} \;
find "$SITE_DIR" -type f -name "*.css" -exec sed -i '' "s|$ORIGINAL_DOMAIN/|/|g" {} \;

echo "Fixing absolute URLs in JavaScript files..."

# Find all JS files and replace absolute URLs with relative ones
find "$SITE_DIR" -type f -name "*.js" -exec sed -i '' "s|$ORIGINAL_DOMAIN/main/|/|g" {} \;
find "$SITE_DIR" -type f -name "*.js" -exec sed -i '' "s|$ORIGINAL_DOMAIN/|/|g" {} \;

echo "URL fixing complete!"
