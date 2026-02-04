# Quick Start Guide - Post Monorepo Migration

## ✅ What Was Done

Migrated from single repository to **monorepo structure**:

```
Before:                     After:
/index.html         →       /sushi-hey-portal/index.html
                            /nao-roy-studio/index.html
```

---

## 🚨 IMMEDIATE ACTIONS REQUIRED

### 1. Update Cloudflare Pages Root Directories

#### For sushihey.com:
```bash
Cloudflare Dashboard → sushi-hey-portal project
→ Settings → Builds & deployments
→ Root directory: "sushi-hey-portal"  # ← CHANGE THIS
→ Save and Redeploy
```

#### For nao-roy.com (new):
```bash
Cloudflare Dashboard → Create new Pages project
→ Connect to Git: nao1234g/sushi-hey-portal
→ Project name: nao-roy-studio
→ Root directory: "nao-roy-studio"  # ← SET THIS
→ Custom domain: nao-roy.com
→ Save and Deploy
```

**Why this matters**: Without correct root directories, Cloudflare will look for `index.html` in the wrong place and show 404 errors.

---

### 2. Update Formspree Form ID

**Quick Method** (use provided script):
```bash
cd /workspaces/sushi-hey-portal
./setup-formspree.sh
# Enter your Formspree Form ID when prompted
```

**Manual Method**:
1. Get your Form ID from https://formspree.io/forms
2. Edit `/nao-roy-studio/index.html` line 133
3. Replace `YOUR_FORM_ID` with actual ID (e.g., `mrbgjpzx`)

---

## 🧪 Local Testing

### Test sushihey.com locally:
```bash
cd /workspaces/sushi-hey-portal/sushi-hey-portal
python3 -m http.server 8000
# Visit: http://localhost:8000
```

### Test nao-roy.com locally:
```bash
cd /workspaces/sushi-hey-portal/nao-roy-studio
python3 -m http.server 8001
# Visit: http://localhost:8001
```

---

## 📋 Verification Checklist

After Cloudflare setup:

- [ ] Visit https://sushihey.com → Should show dual-universe portal
- [ ] Visit https://nao-roy.com → Should show producer studio site
- [ ] Test contact form on nao-roy.com → Email should arrive at contact@nao-roy.com
- [ ] Check mobile responsiveness on both sites
- [ ] Verify SSL certificates (green lock icon)

---

## 🆘 Troubleshooting

### sushihey.com shows 404:
1. Check Cloudflare root directory = `sushi-hey-portal`
2. Redeploy from Cloudflare dashboard
3. Wait 2-3 minutes for DNS propagation

### nao-roy.com not loading:
1. Verify DNS records point to Cloudflare
2. Check custom domain settings in Cloudflare
3. Confirm root directory = `nao-roy-studio`

### Contact form not working:
1. Update Formspree ID using `./setup-formspree.sh`
2. Verify form endpoint in browser DevTools
3. Check spam folder for test emails

---

## 📚 Documentation Files

| File | Purpose |
|------|---------|
| [MASTER_INSTRUCTIONS.md](MASTER_INSTRUCTIONS.md) | Complete monorepo configuration & domain mapping |
| [CLOUDFLARE_SETUP.md](CLOUDFLARE_SETUP.md) | Detailed Cloudflare deployment guide |
| [setup-formspree.sh](setup-formspree.sh) | Automated Formspree ID update script |
| [README.md](README.md) | Overview & quick links |

---

## 🎯 Next Steps After Setup

1. **Create OG images** for social sharing:
   - `/sushi-hey-portal/og-image.jpg` (1200×630px)
   - `/nao-roy-studio/og-image.jpg` (1200×630px)

2. **Add language versions** for sushihey.com:
   - `/sushi-hey-portal/en/index.html`
   - `/sushi-hey-portal/zh/index.html`
   - `/sushi-hey-portal/ko/index.html`
   - `/sushi-hey-portal/fr/index.html`

3. **Set up analytics** (optional):
   - Google Analytics
   - Cloudflare Web Analytics (built-in, privacy-friendly)

---

**Need help?** Check [MASTER_INSTRUCTIONS.md](MASTER_INSTRUCTIONS.md) for detailed guidance.

**Ready to build?** Use [.github/copilot-instructions.md](.github/copilot-instructions.md) to guide AI agents.
