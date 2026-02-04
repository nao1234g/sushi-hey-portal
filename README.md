# Nao & Roy - Monorepo

## 🎭 Overview
This monorepo manages multiple websites under the "Nao & Roy" production umbrella.

### 🌐 Sites in this Repository

| Folder | Domain | Purpose |
|--------|--------|---------|
| **`/sushi-hey-portal`** | [sushihey.com](https://sushihey.com) | Consumer portal for "SUSHI HEY!" entertainment universe |
| **`/nao-roy-studio`** | [nao-roy.com](https://nao-roy.com) | Producer studio & business headquarters |

---

## 🚀 Quick Start

### Local Development
```bash
# Clone repository
git clone https://github.com/nao1234g/sushi-hey-portal.git
cd sushi-hey-portal

# Serve sushihey.com locally
cd sushi-hey-portal
python3 -m http.server 8000

# Serve nao-roy.com locally
cd nao-roy-studio
python3 -m http.server 8001
```

### Deployment
Both sites auto-deploy via Cloudflare Pages on `git push origin main`:
- Changes in `/sushi-hey-portal` → Deploy to sushihey.com
- Changes in `/nao-roy-studio` → Deploy to nao-roy.com

---

## 📚 Documentation

- **[MASTER_INSTRUCTIONS.md](MASTER_INSTRUCTIONS.md)** - Complete monorepo configuration
- **[.github/copilot-instructions.md](.github/copilot-instructions.md)** - AI agent development guide

---

## 🎨 Projects

### SUSHI HEY! (sushihey.com)
Dual-universe entertainment portal featuring:
- **Gen (源)**: 19yo sushi chef (Real Universe)
- **Kohada-kun (小肌くん)**: Sushi spirit (Fantasy Universe)
- Rainbow gradients, black backgrounds, Noto Sans JP
- YouTube, TikTok, note integration

### Nao & Roy Studio (nao-roy.com)
Professional producer studio site:
- About page & portfolio
- Contact form (→ contact@nao-roy.com)
- Clean, minimalist design
- Business-focused messaging

---

**Produced by Nao & Roy** 🍣✨
