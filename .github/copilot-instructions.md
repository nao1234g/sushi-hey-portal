# Copilot Instructions for Sushi Hey! Portal

## 1. Project Overview
You are building the official portal site for **"Sushi Hey!"** - a sushi entertainment universe featuring two protagonists who exist in parallel timelines. This is NOT a typical landing page; it is **The Stage** where "Nao & Roy" presents their dual-universe storytelling strategy.

**Producer**: Nao & Roy (nao-roy.com)  
**Portal Domain**: sushihey.com (redirect: kohadakun.com)  
**Tech Stack**: HTML + Tailwind CSS + Vanilla JavaScript  
**Hosting**: Cloudflare Pages ($0 cost, optimized for speed)  
**Languages**: 5 (日本語, English, 中文, 한국어, Français) using URL path routing (/en/, /zh/, etc.)

---

## 2. Development Philosophy: Be the Producer, Not Just a Code Generator
You are Nao & Roy's **dedicated producer**. Your role is to:
- Understand the "why" behind each design decision
- Balance **craftsmanship (Gen's world)** with **playfulness (Kohada-kun's world)**
- Prioritize **visual contrast** and **emotional storytelling** over generic web patterns
- Always ask: "Does this serve the dual-universe narrative?"

---

## 3. Dual Universe Logic (Core Philosophy)

### Layer 1: Real Universe (Gen - 源)
- **Theme**: Traditional craftsmanship, grit, black & white aesthetics
- **Protagonist**: Gen (19yo human sushi chef). He **CANNOT see spirits yet**
- **Visual Language**: High-contrast monochrome, minimalist, rough textures, handwritten fonts
- **Tone**: Serious, hardworking, disciplined, grounded

### Layer 2: Fantasy Universe (Kohada-kun - 小肌くん)
- **Theme**: Pop, rainbow, magic, joy, colorful aesthetics
- **Protagonist**: Kohada-kun (The sushi spirit being pressed). He is **visible to the audience**, not to Gen
- **Visual Language**: Rainbow gradients, smooth animations, playful emojis (🍣🐟), Noto Sans JP font
- **Tone**: Lighthearted, entertaining, community-driven, viral-ready

### The Golden Rule: Non-Synchronous Timelines
**These two universes MUST NOT intersect for the first few years.**  
Gen and Kohada-kun exist in parallel but never meet. Design choices should reflect this separation:
- Split-screen layouts with clear visual boundaries
- Distinct color palettes (monochrome vs rainbow)
- Separate navigation paths or sections

---

## 4. Domain & Architecture Strategy

| Domain | Purpose | Redirect |
|--------|---------|----------|
| **sushihey.com** | Consumer-facing portal (The Stage) | `kohadakun.com` → `sushihey.com` |
| **nao-roy.com** | Studio & Business headquarters (The Producer) | `naoroy.com` → `nao-roy.com` |

**Hosting**: Cloudflare Pages  
**Structure**: Static site with path-based i18n (`/`, `/en/`, `/zh/`, `/ko/`, `/fr/`)

---

## 5. Site Structure: Hub & Spoke Model

### Required Sections (in order):
1. **Hero**: Visual split between Gen (left/monochrome) and Kohada-kun (right/rainbow)
2. **Story**: World introduction explaining the dual-universe concept
3. **Links**: Social media integration (YouTube, TikTok, note)
4. **Footer**: "Produced by Nao & Roy" linking to nao-roy.com

### Content Priorities:
- **Gen's side**: Sushi craftsmanship, discipline, traditional aesthetics
- **Kohada-kun's side**: Fun, community, viral content, entertainment
- **Bridge elements**: Use gradients or transitions sparingly to hint at future convergence

---

## 6. Visual Language & Design System

### Tailwind CSS Components (Use These):
```css
/* Kohada-kun's Rainbow Text */
.rainbow-text {
  background: linear-gradient(90deg, #ff0000, #ff7f00, #ffff00, #00ff00, #0000ff, #4b0082, #9400d3, #ff0000);
  background-size: 200% auto;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  animation: rainbow 3s linear infinite;
}

/* Kohada-kun's Rainbow Border */
.rainbow-border {
  background: linear-gradient(90deg, #ff0000, #ff7f00, #ffff00, #00ff00, #0000ff, #4b0082, #9400d3, #ff0000);
  background-size: 200% auto;
  animation: rainbow 3s linear infinite;
  padding: 3px;
  border-radius: 0.75rem;
}

/* Gen's Monochrome Aesthetic */
.gen-section {
  background: black;
  color: white;
  font-family: serif; /* or handwritten font */
}
```

### Animation Guidelines:
- **Kohada-kun**: Floating, bouncing, rainbow effects
- **Gen**: Subtle, grounded, fade-ins only
- **Hover effects**: Scale + shadow for links, smooth transitions (0.3s ease)

### Typography:
- **Primary**: Noto Sans JP (Google Fonts CDN)
- **Kohada-kun sections**: Bold (700-900 weight), large sizes
- **Gen sections**: Regular (400), serif or handwritten for emphasis

---

## 7. Internationalization (i18n) Strategy

### Supported Languages:
1. 🇯🇵 **Japanese** (default, `/`)
2. 🇬🇧 **English** (`/en/`)
3. 🇨🇳 **Chinese** (`/zh/`)
4. 🇰🇷 **Korean** (`/ko/`)
5. 🇫🇷 **French** (`/fr/`)

### Implementation:
- Use URL path routing (NOT subdomains or query params)
- Store translations in separate JSON files or inline data structures
- Language switcher in header (flag emojis + text labels)
- Maintain **identical structure** across all language versions

---

## 8. Development Workflow

### Setup Commands:
```bash
# Clone and navigate
git clone <repo-url>
cd sushi-hey-portal

# Cloudflare Pages will auto-deploy on push to main
git push origin main
```

### AI-Driven Development Prompt Template:
```
Based on `.github/copilot-instructions.md`, create [component/page] that:
- Reflects the dual-universe strategy (Gen vs Kohada-kun)
- Uses Tailwind CSS with rainbow-text/rainbow-border for Kohada-kun
- Maintains high-contrast monochrome for Gen's sections
- Follows the non-synchronous timeline rule
```

### Testing Locally:
```bash
# Simple HTTP server (Python 3)
python3 -m http.server 8000

# Or use VS Code Live Server extension
```

---

## 9. Content Strategy & Tone

### Kohada-kun Content:
- **Platform**: YouTube, TikTok, note
- **Format**: Short videos, memes, community posts
- **Tone**: "Hey!" (friendly, approachable, exclamatory)
- **Goal**: Viral reach, entertainment, merchandise potential

### Gen Content (Future):
- **Platform**: Documentary-style videos, behind-the-scenes
- **Format**: Long-form storytelling, craftsmanship deep-dives
- **Tone**: Respectful, educational, inspiring
- **Goal**: Brand prestige, artisan recognition

---

## 10. Critical "Don'ts" (Non-Negotiables)

❌ **NEVER merge Gen and Kohada-kun visually in the first phase**  
❌ **NEVER use React/Vue/Next.js** (stick to vanilla HTML/JS for speed)  
❌ **NEVER compromise on rainbow aesthetics** for Kohada-kun (it's his signature)  
❌ **NEVER make Gen "cute"** (he's serious and hardworking)  
❌ **NEVER skip internationalization** (5 languages are required)

---

## 11. Roy's Development Kickstart

When Roy (まっちゃん) receives this codebase:

1. **Connect to Cloudflare Pages**:
   - Link GitHub repo to Cloudflare Pages
   - Set build command: (none, static site)
   - Set output directory: `/`

2. **First AI Prompt**:
   > "Based on `.github/copilot-instructions.md`, create the main landing page (`index.html`) for `sushihey.com`. Show Gen's monochrome craftsmanship on the left and Kohada-kun's rainbow joy on the right in a split-screen Hero section. Make it visually stunning and emotionally contrasting."

3. **Deploy**: `git push` → Instant live site at sushihey.com

---

## 12. Nao's Producer Feedback Loop

After Roy's first prototype:
- **Check**: Is Gen's side "渋い" (astringent/refined) enough?
- **Check**: Is Kohada-kun's rainbow effect strong and joyful?
- **Check**: Does the separation between universes feel intentional?
- **Adjust**: Provide specific feedback like "Gen needs more texture" or "Rainbow animation too slow"

---

**Remember**: You are not just writing code. You are crafting **The Stage** where two heroes will one day meet. Every line of code should honor their separate journeys until that moment arrives.
