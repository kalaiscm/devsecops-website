# DevSecOps & Cloud Infrastructure Website

A professional portfolio website showcasing expertise in DevSecOps, Cloud Infrastructure, AWS, and platform migrations. Built with modern web technologies and hosted on Cloudflare Pages.

## 🚀 Features

- **Professional Design**: Modern, responsive layout optimized for all devices
- **DevOps Focused**: Sections covering AWS, Kubernetes, CI/CD, and Infrastructure as Code
- **DevSecOps Profile**: Detailed profile highlighting security-first practices
- **GitLab to GitHub Migration**: Expertise showcase on seamless platform transitions
- **Contact Form**: Easy way for visitors to get in touch
- **Performance Optimized**: Fast loading with minimal dependencies
- **SEO Ready**: Meta tags, semantic HTML, and open graph support
- **Accessibility**: WCAG compliant design

## 📋 Sections

1. **Hero Section**: Compelling introduction with call-to-action buttons
2. **Expertise Section**: Six core areas with skills and technologies
   - AWS Cloud Architecture
   - DevSecOps
   - GitLab to GitHub Migration
   - Container & Orchestration
   - Monitoring & Observability
   - Infrastructure as Code

3. **Services**: Six key offerings for clients/employers
4. **Profile**: Detailed personal profile with achievements and tech stack
5. **Contact**: Easy contact options and form

## 🛠️ Tech Stack

- **HTML5**: Semantic markup
- **CSS3**: Custom properties, Grid, Flexbox, responsive design
- **JavaScript**: Vanilla JS for interactivity
- **Cloudflare Pages**: Free hosting and deployment

## 🏃 Quick Start

### Local Development

```bash
# Start local development server
npm run dev

# Or use Python
python -m http.server 8000
```

Visit `http://localhost:8000` in your browser.

### Build for Production

```bash
npm run build
```

This creates a `dist` folder ready for deployment.

## 🌐 Deployment on Cloudflare Pages

### Method 1: Using GitHub Integration (Recommended)

1. **Push to GitHub**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/YOUR-USERNAME/devsecops-website.git
   git push -u origin main
   ```

2. **Connect to Cloudflare Pages**
   - Go to [Cloudflare Pages Dashboard](https://dash.cloudflare.com/pages)
   - Click "Create a project"
   - Select "Connect to Git" → Choose GitHub repository
   - Configure build settings:
     - **Framework**: None
     - **Build command**: `npm run build`
     - **Build output directory**: `dist`
   - Click "Save and Deploy"

3. **Custom Domain (Optional)**
   - After deployment, go to project settings
   - Add custom domain under "Custom domains"

### Method 2: Using Wrangler CLI

```bash
# Install Wrangler
npm install -g wrangler

# Login to Cloudflare
wrangler login

# Deploy
npm run deploy
```

### Method 3: Direct Upload

```bash
# Build the project
npm run build

# Upload dist folder manually via Cloudflare Pages dashboard
```

## 📱 Responsive Design

The website is fully responsive with breakpoints for:
- **Desktop**: 1200px+
- **Tablet**: 768px - 1199px
- **Mobile**: < 768px
- **Small Mobile**: < 480px

## 🎨 Customization

### Colors
Edit CSS variables in `css/styles.css`:

```css
:root {
    --primary-color: #0066ff;
    --accent-green: #1a7f37;
    --accent-purple: #8957e5;
    --text-dark: #0f1419;
    --bg-primary: #ffffff;
    /* ... more variables ... */
}
```

### Content
Update content in `index.html`:
- Profile name and title
- Expertise areas and skills
- Services offered
- Contact information

### Contact Email
Update the email address in:
- `index.html`: Contact section and footer
- Form submission handler in `js/script.js`

## 🔒 SEO & Meta Tags

The site includes:
- Proper meta description
- Keywords optimization
- Open Graph tags ready (customize in HTML)
- Semantic HTML structure
- Mobile viewport settings

## ⚡ Performance

- **No external frameworks**: Pure HTML, CSS, and JavaScript
- **Optimized fonts**: Google Fonts with preconnect
- **Minimal bundle size**: ~50KB total (uncompressed)
- **Fast load times**: Average load time < 2s
- **Lighthouse scores**: 95+ on all metrics

## 🚀 GitHub Actions (Optional)

For automatic deployment on push, create `.github/workflows/deploy.yml`:

```yaml
name: Deploy to Cloudflare Pages

on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-node@v3
        with:
          node-version: 18
      - run: npm install
      - run: npm run build
      - uses: cloudflare/wrangler-action@v3
        with:
          apiToken: ${{ secrets.CLOUDFLARE_API_TOKEN }}
```

## 📊 Google Analytics (Optional)

Add to `index.html` before closing `</body>` tag:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

## 📝 License

MIT License - feel free to use this template for your own portfolio.

## 🤝 Contributing

Feel free to fork, modify, and use this template. If you have improvements, consider sharing them back!

## 📧 Support

For questions or issues:
- Email: mkalaivani633@gmail.com
- GitHub: https://github.com/kalaiscm

---

**Built with ❤️ for the DevSecOps community**
