# MASTER INSTRUCTIONS - Monorepo Configuration

## 🎯 Project Overview
This is a **monorepo** managing multiple websites under the "Nao & Roy" production umbrella.

---

## 📂 Repository Structure

```
/workspaces/sushi-hey-portal/
├── sushi-hey-portal/          # sushihey.com (Consumer Portal)
│   ├── index.html
│   └── og-image-template.html.html
├── nao-roy-studio/            # nao-roy.com (Producer Studio)
│   └── index.html
├── .github/
│   └── copilot-instructions.md
├── MASTER_INSTRUCTIONS.md     # This file
└── README.md
```

---

## 🌐 Domain Mapping (CRITICAL)

| Folder Name | Actual Domain | Purpose |
|-------------|---------------|---------|
| **`/sushi-hey-portal`** | **`sushihey.com`** | Consumer-facing portal for "SUSHI HEY!" entertainment universe |
| **`/nao-roy-studio`** | **`nao-roy.com`** | Producer studio & business headquarters |

⚠️ **IMPORTANT**: 
- `nao-roy-studio` is a **FOLDER NAME ONLY**
- The actual domain is `nao-roy.com` (NOT `nao-roy-studio.com`)
- Do NOT confuse folder names with domain names

---

## ☁️ Cloudflare Pages Configuration

### For `sushihey.com`:
```yaml
Project Name: sushi-hey-portal
Build Settings:
  - Build command: (none)
  - Build output directory: /
  - Root directory: /sushi-hey-portal
Custom Domain: sushihey.com
Redirects: kohadakun.com → sushihey.com
```

### For `nao-roy.com`:
```yaml
Project Name: nao-roy-studio
Build Settings:
  - Build command: (none)
  - Build output directory: /
  - Root directory: /nao-roy-studio
Custom Domain: nao-roy.com
Redirects: naoroy.com → nao-roy.com
```

---

## 📧 Contact Form Configuration

### Current Formspree Setup:
- **Endpoint**: `https://formspree.io/f/YOUR_FORM_ID`
- **Destination Email**: `contact@nao-roy.com`
- **Status**: ⚠️ **NEEDS UPDATE** - Replace `YOUR_FORM_ID` with actual Formspree ID

### Action Required:
1. Go to [Formspree Dashboard](https://formspree.io/forms)
2. Create/locate form for `contact@nao-roy.com`
3. Copy the form ID (e.g., `mrbgjpzx`)
4. Update `/nao-roy-studio/index.html` line with actual form ID:
   ```html
   <form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
   ```

---

## 🚀 Deployment Workflow

### Auto-Deployment:
```bash
# Make changes to either site
git add .
git commit -m "feat: Update content"
git push origin main

# Cloudflare Pages automatically detects changes and deploys
# - Changes in /sushi-hey-portal → Deploy to sushihey.com
# - Changes in /nao-roy-studio → Deploy to nao-roy.com
```

### Manual Verification:
```bash
# Check live sites
curl -I https://sushihey.com
curl -I https://nao-roy.com
```

---

## 🎨 Design Philosophy Separation

### sushihey.com (SUSHI HEY!):
- **Theme**: Dual-universe storytelling (Gen vs Kohada-kun)
- **Aesthetic**: Black background + Rainbow gradients
- **Tone**: Entertainment, playful, community-driven
- **Target**: Consumers, fans, entertainment seekers

### nao-roy.com (Producer Studio):
- **Theme**: Professional, credible, business-focused
- **Aesthetic**: Clean, minimalist, high-contrast
- **Tone**: Serious, strategic, producer-minded
- **Target**: Business partners, clients, collaborators

---

## 🛠️ AI Agent Instructions

When working in this monorepo:

1. **Always check folder context** before making changes
2. **Respect domain mapping** - folder names ≠ domain names
3. **Maintain visual separation** between the two brands
4. **Update both sites** when shared assets change (e.g., logos, brand colors)
5. **Test locally** before pushing (use Python HTTP server or Live Server)

### Example Prompts:
```
# Good ✅
"Update the contact form in nao-roy-studio folder for nao-roy.com"

# Bad ❌
"Update the contact form in nao-roy-studio.com"
(This domain doesn't exist!)
```

---

## 📝 Change Log

| Date | Action | Details |
|------|--------|---------|
| 2026-02-04 | Monorepo migration | Merged separate repos into unified structure |
| 2026-02-04 | Domain mapping defined | Clarified folder vs domain relationship |
| 2026-02-04 | nao-roy.com site created | Basic producer studio site with contact form |

---

## 🔗 External Links

- **SUSHI HEY! Portal**: https://sushihey.com
- **Nao & Roy Studio**: https://nao-roy.com
- **GitHub Repository**: https://github.com/nao1234g/sushi-hey-portal
- **Cloudflare Dashboard**: https://dash.cloudflare.com/

---

**Remember**: This is not just code. This is **The Stage** where "Nao & Roy" presents their storytelling universe. Every commit should honor that vision.
