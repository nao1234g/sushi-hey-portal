# Cloudflare Pages Configuration

## Project Setup Instructions

### 1. sushihey.com Configuration

**Project Name**: `sushi-hey-portal`

**Build Configuration**:
- Framework preset: None
- Build command: (leave empty)
- Build output directory: `/`
- Root directory: `sushi-hey-portal`

**Environment Variables**: None required

**Custom Domain**:
- Primary: `sushihey.com`
- Redirect: `kohadakun.com` → `sushihey.com`

---

### 2. nao-roy.com Configuration

**Project Name**: `nao-roy-studio`

**Build Configuration**:
- Framework preset: None
- Build command: (leave empty)
- Build output directory: `/`
- Root directory: `nao-roy-studio`

**Environment Variables**: None required

**Custom Domain**:
- Primary: `nao-roy.com`
- Redirect: `naoroy.com` → `nao-roy.com`

---

## Setup Steps in Cloudflare Dashboard

### For Each Site:

1. **Navigate to Cloudflare Pages**
   - Go to https://dash.cloudflare.com
   - Click "Workers & Pages" → "Create application" → "Pages"

2. **Connect to Git**
   - Select "Connect to Git"
   - Choose repository: `nao1234g/sushi-hey-portal`
   - Click "Begin setup"

3. **Configure Build Settings**
   - Enter project name (see above)
   - Set root directory (CRITICAL: `sushi-hey-portal` or `nao-roy-studio`)
   - Leave build command empty
   - Set output directory to `/`
   - Click "Save and Deploy"

4. **Add Custom Domain**
   - After first deployment, go to "Custom domains"
   - Click "Set up a custom domain"
   - Enter domain name
   - Follow DNS configuration steps

5. **Enable Auto-Deploy**
   - Go to "Settings" → "Builds & deployments"
   - Ensure "Production branch" is set to `main`
   - Enable "Automatic deployments"

---

## Verification Commands

```bash
# Check DNS propagation
dig sushihey.com
dig nao-roy.com

# Check SSL certificates
curl -I https://sushihey.com
curl -I https://nao-roy.com

# Check deployment status
# (Use Cloudflare dashboard)
```

---

## Troubleshooting

### Site not loading?
1. Check "Root directory" setting matches folder name exactly
2. Verify custom domain DNS is configured correctly
3. Check deployment logs in Cloudflare dashboard

### Wrong content showing?
1. Confirm you're editing the correct folder
2. Check git commit pushed successfully
3. Wait 1-2 minutes for deployment to complete

### Form not working?
1. Update Formspree ID in `/nao-roy-studio/index.html`
2. Verify `contact@nao-roy.com` is set as destination
3. Test form submission after deployment

---

**Last Updated**: 2026-02-04
