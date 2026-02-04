# OG Image Generation Guide

## Overview
Both sites need Open Graph (OG) images for social media sharing (Twitter, Facebook, LinkedIn).

**Specifications:**
- Dimensions: 1200×630px
- Format: JPG or PNG
- File size: < 5MB (ideally < 1MB)

---

## Current Status

### ✅ sushihey.com
- Template: `/sushi-hey-portal/og-image-template.html.html`
- Status: HTML template exists (needs conversion to image)
- Target path: `/sushi-hey-portal/og-image.jpg`

### ⚠️ nao-roy.com
- Template: Not yet created
- Status: Needs design
- Target path: `/nao-roy-studio/og-image.jpg`

---

## Option 1: Convert HTML Template to Image (Recommended)

Use a screenshot tool to capture the HTML template at 1200×630px.

### Using Browser DevTools:
```bash
1. Open og-image-template.html.html in Chrome
2. Press F12 → Three dots → More tools → Capture screenshot
3. Or use Full page screenshot
4. Crop/resize to 1200×630px using image editor
5. Save as og-image.jpg
```

### Using Puppeteer (Automated):
```javascript
const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.setViewport({ width: 1200, height: 630 });
  await page.goto('file:///path/to/og-image-template.html.html');
  await page.screenshot({ path: 'og-image.jpg', type: 'jpeg', quality: 90 });
  await browser.close();
})();
```

---

## Option 2: Design in Figma/Canva

### sushihey.com Design:
```
Layout: Split-screen
Left (50%): Gen (源)
  - Black background
  - White text: "源"
  - Subtitle: "19歳の寿司職人見習い"
  - Monochrome aesthetic

Right (50%): Kohada-kun (小肌くん)
  - Black background
  - Rainbow gradient text: "小肌くん"
  - 🍣 emoji
  - Subtitle: "押される寿司の精霊"

Center: 
  - "SUSHI HEY!" in rainbow gradient
  - Vertical white divider line
```

### nao-roy.com Design:
```
Layout: Centered
Background: White or light gradient
Text (centered):
  - "Nao & Roy" (large, bold, black)
  - "ストーリーテリング・プロデューサー"
  - "Storytelling Producers"
Logo/Icon: Optional
Footer: "nao-roy.com"
```

---

## Option 3: Use Online OG Image Generators

Free tools:
- https://www.opengraph.xyz/
- https://bannerbear.com/
- https://www.canva.com/ (OG Image template)

---

## Implementation Steps

### 1. Create Images:
```bash
# Place images in correct folders
sushi-hey-portal/og-image.jpg
nao-roy-studio/og-image.jpg
```

### 2. Update HTML Meta Tags:

**Already configured in both sites:**
```html
<!-- sushi-hey-portal/index.html -->
<meta property="og:image" content="https://sushihey.com/og-image.jpg">

<!-- nao-roy-studio/index.html -->
<meta property="og:image" content="https://nao-roy.com/og-image.jpg">
```

### 3. Test:
```bash
# Test with Facebook Debugger
https://developers.facebook.com/tools/debug/

# Test with Twitter Card Validator
https://cards-dev.twitter.com/validator

# Test with LinkedIn Post Inspector
https://www.linkedin.com/post-inspector/
```

---

## Quick Fix: Placeholder Images

If you need to deploy immediately without custom images:

```bash
# Use solid color placeholders (temporary)
# Create 1200×630 images with site name centered

# For sushihey.com (black with rainbow text)
convert -size 1200x630 xc:black \
  -font Arial-Bold -pointsize 80 -fill white \
  -gravity center -annotate +0+0 "SUSHI HEY!" \
  sushi-hey-portal/og-image.jpg

# For nao-roy.com (white with black text)
convert -size 1200x630 xc:white \
  -font Arial-Bold -pointsize 80 -fill black \
  -gravity center -annotate +0+0 "Nao & Roy" \
  nao-roy-studio/og-image.jpg
```

---

## Testing Checklist

After adding images:

- [ ] Images are exactly 1200×630px
- [ ] File size < 1MB
- [ ] Images display correctly when shared on Twitter
- [ ] Images display correctly when shared on Facebook
- [ ] Images display correctly when shared on LinkedIn
- [ ] Meta tags point to correct URLs
- [ ] Images load via direct URL in browser

---

## Next Steps

1. Choose Option 1, 2, or 3 above
2. Create both OG images
3. Place in correct folders
4. Commit and push:
   ```bash
   git add sushi-hey-portal/og-image.jpg nao-roy-studio/og-image.jpg
   git commit -m "feat: Add OG images for social sharing"
   git push origin main
   ```
5. Test with social media debuggers

---

**Priority**: Medium (improves social sharing appearance)  
**Time estimate**: 30-60 minutes
