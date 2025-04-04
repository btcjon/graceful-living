#!/bin/bash

# Script to fix JavaScript URLs and configuration settings in the site directory
# This will replace all references to the original domain with relative URLs

SITE_DIR="/Users/jonbennett/Dropbox/Coding-Main/graceful-living/site"
ORIGINAL_DOMAIN="https:\\/\\/harmony-care.cmsmasters.net"

echo "Fixing JavaScript URLs and configuration settings..."

# Fix JavaScript configuration objects with domain references
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|$ORIGINAL_DOMAIN\\/main\\/wp-admin\\/admin-ajax.php|\\/wp-admin\\/admin-ajax.php|g" {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|$ORIGINAL_DOMAIN\\/main\\/wp-content|\\/wp-content|g" {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|$ORIGINAL_DOMAIN\\/main\\/wp-includes|\\/wp-includes|g" {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|$ORIGINAL_DOMAIN\\/main\\/wp-json|\\/wp-json|g" {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|$ORIGINAL_DOMAIN\\/main\\/cart\\/|\\/cart\\/|g" {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|$ORIGINAL_DOMAIN\\/main|\\/|g" {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' "s|$ORIGINAL_DOMAIN|\\/|g" {} \;

# Fix redirect URLs in JavaScript objects
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' 's|"redirect_url":"https:\\/\\/harmony-care.cmsmasters.net\\/main"|"redirect_url":"\\/")|g' {} \;

# Fix uploadUrl in JavaScript objects
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' 's|"uploadUrl":"https:\\/\\/harmony-care.cmsmasters.net\\/main\\/wp-content\\/uploads\\/sites\\/3"|"uploadUrl":"\\/wp-content\\/uploads\\/sites\\/3"|g' {} \;

# Fix assets URLs in JavaScript objects
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' 's|"assets":"https:\\/\\/harmony-care.cmsmasters.net\\/main\\/wp-content\\/plugins|"assets":"\\/wp-content\\/plugins|g' {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' 's|"cmsmasters_assets":"https:\\/\\/harmony-care.cmsmasters.net\\/main\\/wp-content\\/plugins|"cmsmasters_assets":"\\/wp-content\\/plugins|g' {} \;
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' 's|"modules":"https:\\/\\/harmony-care.cmsmasters.net\\/main\\/wp-content\\/plugins|"modules":"\\/wp-content\\/plugins|g' {} \;

# Fix intlTelInput_utils_script URL
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' 's|"intlTelInput_utils_script":"https:\\/\\/harmony-care.cmsmasters.net\\/main\\/wp-content\\/plugins\\/forminator\\/assets\\/js\\/library\\/intlTelInputUtils.js"|"intlTelInput_utils_script":"\\/wp-content\\/plugins\\/forminator\\/assets\\/js\\/library\\/intlTelInputUtils.js"|g' {} \;

# Fix emoji settings
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' 's|"concatemoji":"https:\\/\\/harmony-care.cmsmasters.net\\/main\\/wp-includes\\/js\\/wp-emoji-release.min.js|"concatemoji":"\\/wp-includes\\/js\\/wp-emoji-release.min.js|g' {} \;

# Fix data-elementor-settings attributes
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' 's|\\u0026quot;url\\u0026quot;:\\u0026quot;https:\\/\\/harmony-care.cmsmasters.net\\/main\\/wp-content\\/uploads|\\u0026quot;url\\u0026quot;:\\u0026quot;\\/wp-content\\/uploads|g' {} \;

# Fix oEmbed URLs
find "$SITE_DIR" -type f -name "*.html" -exec sed -i '' 's|%EF%B9%96url=https%EF%B9%95%EA%A4%B7%EA%A4%B7harmony-care.cmsmasters.net%EA%A4%B7main%EA%A4%B7|%EF%B9%96url=https%EF%B9%95%EA%A4%B7%EA%A4%B7your-domain.com%EA%A4%B7|g' {} \;

echo "JavaScript URL fixing complete!"
