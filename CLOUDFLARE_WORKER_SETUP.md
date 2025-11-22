# Cloudflare Worker Setup for Font CDN

This document explains how to set up the Cloudflare Worker to serve fonts from the R2 bucket.

## Prerequisites

- Cloudflare account with Workers enabled
- R2 bucket named `public-cdn`
- Domain `cdn.hixbe.com` configured in Cloudflare

## Deploy the Worker

1. **Create a new Worker**:
   - Go to Cloudflare Dashboard → Workers & Pages → Create Worker
   - Name it something like `hixbe-font-cdn`

2. **Paste the code**:
   - Copy the code from `worker.js` and paste it into the Worker editor

3. **Bind the R2 bucket**:
   - In the Worker settings, go to "Bindings"
   - Add a new R2 binding:
     - Variable name: `public_cdn`
     - R2 bucket: `public-cdn`

4. **Set up the route**:
   - In the Worker settings, go to "Triggers"
   - Add a custom domain route: `cdn.hixbe.com/*`

5. **Deploy**:
   - Save and deploy the Worker

## Font URLs

Fonts will be available with Google Fonts-like URLs:

### Direct Font Files
- `https://cdn.hixbe.com/s/{family}/v{version}/{filename}`
- Example: `https://cdn.hixbe.com/s/kalpurush/v1/kalpurush.woff2`

### CSS Files (for easy loading)
- `https://cdn.hixbe.com/s/{family}/font.css`
- Example: `https://cdn.hixbe.com/s/kalpurush/font.css`

## Usage Examples

### HTML Link
```html
<link href="https://cdn.hixbe.com/s/kalpurush/font.css" rel="stylesheet">
```

### CSS Import
```css
@import url('https://cdn.hixbe.com/s/kalpurush/font.css');
```

### Direct @font-face
```css
@font-face {
  font-family: 'Kalpurush';
  font-style: normal;
  font-weight: 400;
  src: url(https://cdn.hixbe.com/s/kalpurush/v1/kalpurush.woff2) format('woff2'),
       url(https://cdn.hixbe.com/s/kalpurush/v1/kalpurush.woff) format('woff');
}
```

## Testing

After deployment, test the CDN:

```bash
curl -I https://cdn.hixbe.com/s/kalpurush/v1/kalpurush.woff2
```

You should get a 200 response with proper cache headers.

## Notes

- The Worker sets a 1-year cache expiry for fonts
- CORS headers are included for cross-origin requests
- Only GET requests are allowed
- Requests outside `/s/*` return 404
