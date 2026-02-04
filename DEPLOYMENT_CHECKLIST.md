# Deployment Verification Checklist

Use this checklist after completing Cloudflare Pages configuration.

## 📋 Pre-Deployment

- [ ] Monorepo structure is correct
  - [ ] `/sushi-hey-portal/index.html` exists
  - [ ] `/nao-roy-studio/index.html` exists
  - [ ] `.github/copilot-instructions.md` exists
- [ ] Git repository is up to date
  - [ ] `git status` shows "working tree clean"
  - [ ] Latest commit is pushed to `origin/main`

---

## ☁️ Cloudflare Pages Configuration

### sushihey.com Project

- [ ] Project name: `sushi-hey-portal`
- [ ] Connected to: `nao1234g/sushi-hey-portal`
- [ ] Branch: `main`
- [ ] **Root directory**: `sushi-hey-portal` ✅ CRITICAL
- [ ] Build command: (empty)
- [ ] Build output directory: `/`
- [ ] Custom domain: `sushihey.com`
- [ ] Redirect configured: `kohadakun.com` → `sushihey.com`
- [ ] SSL certificate: Active
- [ ] Automatic deployments: Enabled

### nao-roy.com Project

- [ ] Project name: `nao-roy-studio`
- [ ] Connected to: `nao1234g/sushi-hey-portal`
- [ ] Branch: `main`
- [ ] **Root directory**: `nao-roy-studio` ✅ CRITICAL
- [ ] Build command: (empty)
- [ ] Build output directory: `/`
- [ ] Custom domain: `nao-roy.com`
- [ ] Redirect configured: `naoroy.com` → `nao-roy.com`
- [ ] SSL certificate: Active
- [ ] Automatic deployments: Enabled

---

## 🧪 Functional Testing

### sushihey.com Tests

- [ ] Site loads at https://sushihey.com
- [ ] HTTPS (green lock) is working
- [ ] Hero section shows Gen (left) and Kohada-kun (right)
- [ ] Rainbow gradient text is animating
- [ ] Split-screen divider is visible
- [ ] Story section displays both universes
- [ ] Links section shows YouTube/TikTok/note cards
- [ ] Links open correctly in new tabs
- [ ] Footer shows "Produced by Nao & Roy"
- [ ] Mobile responsive (test on phone/tablet)

### nao-roy.com Tests

- [ ] Site loads at https://nao-roy.com
- [ ] HTTPS (green lock) is working
- [ ] Header navigation works
- [ ] About section displays Nao & Roy profiles
- [ ] Works section shows SUSHI HEY! card
- [ ] SUSHI HEY! link points to sushihey.com
- [ ] Contact form displays correctly
- [ ] Contact form submits successfully
- [ ] Test email arrives at contact@nao-roy.com
- [ ] Footer link to sushihey.com works
- [ ] Mobile responsive (test on phone/tablet)

---

## 📧 Contact Form Testing

### Formspree Configuration

- [ ] Formspree account created
- [ ] Form created for contact@nao-roy.com
- [ ] Form ID obtained (e.g., `mrbgjpzx`)
- [ ] Form ID updated in `/nao-roy-studio/index.html`
- [ ] Changes committed and pushed

### Form Submission Test

- [ ] Fill out form with test data:
  - Name: "Test User"
  - Email: "test@example.com"
  - Message: "This is a test submission"
- [ ] Click "送信する" button
- [ ] Form submits without errors
- [ ] Check contact@nao-roy.com inbox
- [ ] Test email received
- [ ] Reply-to address is correct
- [ ] Form data is accurate

---

## 🔍 SEO & Social Media

### Meta Tags Verification

- [ ] View page source on both sites
- [ ] OG tags are present
- [ ] Twitter Card tags are present
- [ ] Canonical URLs are correct
- [ ] Description meta tags are descriptive

### Social Media Sharing

- [ ] Test Facebook sharing:
  - [ ] https://developers.facebook.com/tools/debug/
  - [ ] Scrape sushihey.com
  - [ ] Scrape nao-roy.com
  - [ ] Images display correctly
  - [ ] Titles/descriptions correct

- [ ] Test Twitter sharing:
  - [ ] https://cards-dev.twitter.com/validator
  - [ ] Validate sushihey.com
  - [ ] Validate nao-roy.com
  - [ ] Cards display correctly

- [ ] Test LinkedIn sharing:
  - [ ] https://www.linkedin.com/post-inspector/
  - [ ] Inspect both URLs
  - [ ] Preview looks good

---

## 🚀 Performance & Security

### Speed Tests

- [ ] PageSpeed Insights: https://pagespeed.web.dev/
  - [ ] sushihey.com score > 90
  - [ ] nao-roy.com score > 90
- [ ] GTmetrix: https://gtmetrix.com/
  - [ ] Load time < 2 seconds
- [ ] Cloudflare Analytics enabled

### Security Headers

- [ ] SSL Labs Test: https://www.ssllabs.com/ssltest/
  - [ ] sushihey.com: Grade A
  - [ ] nao-roy.com: Grade A
- [ ] HTTPS is enforced (HTTP → HTTPS redirect)
- [ ] No mixed content warnings

---

## 📱 Cross-Browser Testing

### Desktop

- [ ] Chrome (latest)
- [ ] Firefox (latest)
- [ ] Safari (latest)
- [ ] Edge (latest)

### Mobile

- [ ] iOS Safari
- [ ] Android Chrome
- [ ] Responsive design works on all screen sizes

---

## 🔄 Continuous Deployment

### Test Auto-Deploy

- [ ] Make a small change (e.g., update README.md)
- [ ] Commit and push to main
- [ ] Cloudflare Pages detects change
- [ ] Both projects rebuild automatically
- [ ] Changes appear on live sites within 2 minutes

---

## 📝 Documentation Review

- [ ] README.md is up to date
- [ ] MASTER_INSTRUCTIONS.md is accurate
- [ ] CLOUDFLARE_SETUP.md reflects actual setup
- [ ] QUICKSTART.md has correct action items
- [ ] All documentation links work

---

## ✅ Final Sign-Off

Date completed: ________________

Verified by: ________________

Notes:
_______________________________________
_______________________________________
_______________________________________

---

## 🆘 Common Issues & Solutions

### Issue: Site shows 404
**Solution**: Check Root directory setting in Cloudflare matches folder name exactly

### Issue: Old content showing
**Solution**: Clear Cloudflare cache (Caching → Purge Everything)

### Issue: Contact form not working
**Solution**: Verify Formspree ID is correct and form is active

### Issue: Images not loading
**Solution**: Check file paths are relative, not absolute

### Issue: Mobile layout broken
**Solution**: Test with Chrome DevTools mobile emulator, check Tailwind responsive classes

---

**Last Updated**: 2026-02-04  
**Repo**: nao1234g/sushi-hey-portal
