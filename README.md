# 🍣 Nao & Roy Universe - Monorepo

> **"一握りに、全てを。"** - 源  
> **"へい、お待ち！"** - 小肌くん

---

## 🎭 Project Overview

This monorepo is **The Stage** for the "SUSHI HEY!" dual-universe storytelling project - where two parallel worlds exist simultaneously:

- **世界線A (Gen - 源)**: A 19-year-old sushi apprentice's journey in monochrome reality
- **世界線B (Kohada-kun - 小肌くん)**: A rainbow-colored sushi spirit searching for destiny

**These two universes never meet... until they do.**

---

## 🌐 Live Sites

| Domain | Folder | Purpose | Status |
|--------|--------|---------|--------|
| **[sushihey.com](https://sushihey.com)** | `/sushi-hey-portal` | Consumer entertainment portal | 🟢 Live |
| **[nao-roy.com](https://nao-roy.com)** | `/nao-roy-studio` | Producer studio headquarters | 🟢 Live |

**Redirects**:
- `kohadakun.com` → `sushihey.com`
- `naoroy.com` → `nao-roy.com`

---

## 🚀 Quick Start

### For Developers (Roy)

**1. Clone & Run Locally**:
```bash
git clone https://github.com/nao1234g/sushi-hey-portal.git
cd sushi-hey-portal

# Start both sites simultaneously
./dev-server.sh
# → sushihey.com: http://localhost:8000
# → nao-roy.com:  http://localhost:8001
```

**2. Make Changes**:
```bash
# Edit files in /sushi-hey-portal or /nao-roy-studio
# Test locally
# Commit and push
git add .
git commit -m "feat: Your change description"
git push origin main

# Auto-deploys to production via Cloudflare Pages
```

**3. Setup Required Services** (First Time):
```bash
# Configure Formspree contact form
./setup-formspree.sh

# Follow Cloudflare setup guide
# See: CLOUDFLARE_SETUP.md
```

---

## 📚 Essential Documentation

**Start here** 👇

| Document | Purpose | For |
|----------|---------|-----|
| **[WORLD_BIBLE.md](WORLD_BIBLE.md)** ⭐ | Project philosophy & complete blueprint | Everyone |
| **[QUICKSTART.md](QUICKSTART.md)** | Immediate action items | New contributors |
| **[MASTER_INSTRUCTIONS.md](MASTER_INSTRUCTIONS.md)** | Technical details & domain mapping | Developers |
| **[.github/copilot-instructions.md](.github/copilot-instructions.md)** | AI development guide | AI agents |

**Reference guides**:
- [CLOUDFLARE_SETUP.md](CLOUDFLARE_SETUP.md) - Deployment configuration
- [DEPLOYMENT_CHECKLIST.md](DEPLOYMENT_CHECKLIST.md) - Pre-production verification
- [OG_IMAGE_GUIDE.md](OG_IMAGE_GUIDE.md) - Social media image creation

---

## 🎨 The Dual Universe

### 🥷 Gen (源) - The Real Universe

**Theme**: Traditional craftsmanship, discipline, monochrome aesthetics  
**Visual Language**: Black & white, serif fonts, minimal animations  
**Content**: Documentary-style, long-form storytelling  
**Tone**: Serious, grounded, inspiring

### 🍣 Kohada-kun (小肌くん) - The Fantasy Universe

**Theme**: Pop entertainment, magic, rainbow aesthetics  
**Visual Language**: Rainbow gradients, bold fonts, playful animations  
**Content**: Viral videos, community engagement, merchandise  
**Tone**: Lighthearted, joyful, community-driven

### ⚠️ The Golden Rule

**These universes MUST NOT intersect** in the first phase.  
The separation creates tension, anticipation, and the ultimate emotional payoff when they finally meet (in ~2028).

---

## 🛠️ Tech Stack

**Frontend**: HTML5 + Tailwind CSS (CDN) + Vanilla JavaScript  
**Hosting**: Cloudflare Pages (free tier, global CDN)  
**Forms**: Formspree → contact@nao-roy.com  
**Version Control**: Git + GitHub  
**Deployment**: Automatic on `git push`

**Why this stack?**  
- $0/month operational cost
- Blazing fast (static site, global CDN)
- AI-friendly (simple, no build complexity)
- Instant deployments

---

## 📊 Project Roadmap

### ✅ Phase 1: Infrastructure (Complete)
- Monorepo structure
- Domain setup (sushihey.com, nao-roy.com)
- Email routing (contact@nao-roy.com)
- AI development guides

### 🔄 Phase 2: Visual Prototype (Current - 85% Complete)
- [x] Dual-universe landing pages
- [x] Character design foundation
- [ ] Cloudflare Pages root directory configuration
- [ ] Formspree form activation
- [ ] OG image creation

### ⏳ Phase 3: Content Explosion (Q2 2026)
- YouTube channel launch (@sushi-hey)
- TikTok viral strategy (@sushihey)
- note article series
- Community building

### 🎯 Phase 4: Monetization (2027+)
- Character merchandise
- Workshop events
- Corporate partnerships
- Anime/manga adaptation

---

## 🤝 Contributing

### For AI Agents (Claude, Copilot, etc.)

**Read these first**:
1. [WORLD_BIBLE.md](WORLD_BIBLE.md) - Understand the philosophy
2. [.github/copilot-instructions.md](.github/copilot-instructions.md) - Development guidelines

**Critical rules**:
- Maintain Gen/Kohada visual separation
- Use only HTML + Tailwind + Vanilla JS
- Preserve the dual-universe narrative
- Prioritize performance (Lighthouse 90+)

### For Human Developers

**Read these first**:
1. [WORLD_BIBLE.md](WORLD_BIBLE.md) - Project vision
2. [QUICKSTART.md](QUICKSTART.md) - Setup steps
3. [MASTER_INSTRUCTIONS.md](MASTER_INSTRUCTIONS.md) - Technical details

**Workflow**:
```bash
# Always work in feature branches for major changes
git checkout -b feature/your-feature-name

# Test locally first
./dev-server.sh

# Push to main when ready (auto-deploys)
git push origin main
```

---

## 📧 Contact

**Production Team**: Nao & Roy  
**Email**: contact@nao-roy.com  
**Repository**: https://github.com/nao1234g/sushi-hey-portal

---

## 📜 License & Credits

**Created by**: Nao & Roy  
**Production Year**: 2026  
**Philosophy**: "Dual-universe storytelling for maximum emotional impact"

---

**Remember**: You're not just coding. You're building **The Stage** where two heroes will one day meet. Every commit honors their separate journeys.

🍣✨
