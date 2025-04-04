#!/bin/bash

# Comprehensive script to fix all references to the original domain
# This script will handle all edge cases in HTML, JS, and JSON data

SITE_DIR="/Users/jonbennett/Dropbox/Coding-Main/graceful-living/site"
ORIGINAL_DOMAIN="harmony-care.cmsmasters.net"

echo "Starting comprehensive URL fixing process..."

# Fix all variations of the domain in HTML files
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|https://$ORIGINAL_DOMAIN/main/|/|g" {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|https://$ORIGINAL_DOMAIN/|/|g" {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|http://$ORIGINAL_DOMAIN/main/|/|g" {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|http://$ORIGINAL_DOMAIN/|/|g" {} \;

# Fix escaped URLs in JavaScript and JSON data
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|https:\\\\/\\\\/harmony-care.cmsmasters.net\\\\/main\\\\/|\\\\\\\/|g" {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|https:\\\\/\\\\/harmony-care.cmsmasters.net\\\\/|\\\\\\\/|g" {} \;

# Fix double-escaped URLs (common in JSON within HTML)
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|https:\\\\\\\\\/\\\\\\\\\/harmony-care.cmsmasters.net\\\\\\\\\/main\\\\\\\\\/|\\\\\\\\\\\\\\\\\/|g" {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|https:\\\\\\\\\/\\\\\\\\\/harmony-care.cmsmasters.net\\\\\\\\\/|\\\\\\\\\\\\\\\\\/|g" {} \;

# Fix HTML-encoded URLs
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|https:\/\/harmony-care.cmsmasters.net\/main\/|\/|g" {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|https:\/\/harmony-care.cmsmasters.net\/|\/|g" {} \;

# Fix URLs in HTML attributes with HTML entities
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|https:&quot;\\/\\/harmony-care.cmsmasters.net\\/main\\/|&quot;\\/|g" {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|https:&quot;\\/\\/harmony-care.cmsmasters.net\\/|&quot;\\/|g" {} \;

# Fix URLs in data attributes with Unicode escapes
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|https:\\u0026quot;\\/\\/harmony-care.cmsmasters.net\\/main\\/|\\u0026quot;\\/|g" {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|https:\\u0026quot;\\/\\/harmony-care.cmsmasters.net\\/|\\u0026quot;\\/|g" {} \;

# Fix oEmbed URLs with special encoding
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|harmony-care.cmsmasters.net%EA%A4%B7main%EA%A4%B7|your-domain.com|g" {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|harmony-care.cmsmasters.net%EA%A4%B7|your-domain.com|g" {} \;

# Fix any remaining direct references to the domain
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|harmony-care.cmsmasters.net/main/|/|g" {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|harmony-care.cmsmasters.net/|/|g" {} \;

# Fix any remaining domain references in CSS files
find "$SITE_DIR" -type f -name "*.css" -exec sed -i '' "s|https://$ORIGINAL_DOMAIN/main/|/|g" {} \;
find "$SITE_DIR" -type f -name "*.css" -exec sed -i '' "s|https://$ORIGINAL_DOMAIN/|/|g" {} \;
find "$SITE_DIR" -type f -name "*.css" -exec sed -i '' "s|http://$ORIGINAL_DOMAIN/main/|/|g" {} \;
find "$SITE_DIR" -type f -name "*.css" -exec sed -i '' "s|http://$ORIGINAL_DOMAIN/|/|g" {} \;

# Fix any remaining domain references in JS files
find "$SITE_DIR" -type f -name "*.js" -exec sed -i '' "s|https://$ORIGINAL_DOMAIN/main/|/|g" {} \;
find "$SITE_DIR" -type f -name "*.js" -exec sed -i '' "s|https://$ORIGINAL_DOMAIN/|/|g" {} \;
find "$SITE_DIR" -type f -name "*.js" -exec sed -i '' "s|http://$ORIGINAL_DOMAIN/main/|/|g" {} \;
find "$SITE_DIR" -type f -name "*.js" -exec sed -i '' "s|http://$ORIGINAL_DOMAIN/|/|g" {} \;

# Fix escaped URLs in JS files
find "$SITE_DIR" -type f -name "*.js" -exec sed -i '' "s|https:\\\\/\\\\/harmony-care.cmsmasters.net\\\\/main\\\\/|\\\\\\\/|g" {} \;
find "$SITE_DIR" -type f -name "*.js" -exec sed -i '' "s|https:\\\\/\\\\/harmony-care.cmsmasters.net\\\\/|\\\\\\\/|g" {} \;

echo "Comprehensive URL fixing process complete!"
