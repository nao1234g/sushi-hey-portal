#!/bin/bash

# Formspree Setup Script
# This script guides you through setting up Formspree for nao-roy.com

echo "🍣 SUSHI HEY! Monorepo - Formspree Setup"
echo "========================================"
echo ""
echo "📧 Setting up contact form for contact@nao-roy.com"
echo ""

# Step 1: Instructions
cat << 'EOF'
STEP 1: Create Formspree Account
---------------------------------
1. Visit https://formspree.io/
2. Sign up with your email (contact@nao-roy.com recommended)
3. Verify your email

STEP 2: Create New Form
---------------------------------
1. Click "New Form" in Formspree dashboard
2. Name: "Nao & Roy Contact Form"
3. Email destination: contact@nao-roy.com
4. Copy the Form ID (e.g., "mrbgjpzx")

STEP 3: Update HTML File
---------------------------------
EOF

echo ""
echo "Enter your Formspree Form ID (e.g., mrbgjpzx):"
read FORM_ID

if [ -z "$FORM_ID" ]; then
    echo "❌ No Form ID provided. Exiting."
    exit 1
fi

# Update the HTML file
HTML_FILE="nao-roy-studio/index.html"

if [ ! -f "$HTML_FILE" ]; then
    echo "❌ File not found: $HTML_FILE"
    exit 1
fi

# Backup original file
cp "$HTML_FILE" "$HTML_FILE.backup"

# Replace the Form ID
sed -i "s|https://formspree.io/f/YOUR_FORM_ID|https://formspree.io/f/$FORM_ID|g" "$HTML_FILE"

echo ""
echo "✅ Updated $HTML_FILE with Form ID: $FORM_ID"
echo ""
echo "📝 Next Steps:"
echo "1. Review the changes: git diff $HTML_FILE"
echo "2. Test locally: python3 -m http.server 8001"
echo "3. Commit: git add . && git commit -m 'feat: Add Formspree ID for contact form'"
echo "4. Deploy: git push origin main"
echo ""
echo "🎉 Setup complete! Your contact form will now send to contact@nao-roy.com"
