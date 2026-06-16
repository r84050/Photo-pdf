# Photo-pdf Mini App

A powerful photo-to-PDF converter mini application with automatic GitHub Pages deployment.

## 🚀 Quick Start

### Live Demo
**Visit**: https://r84050.github.io/Photo-pdf

### Local Development

#### Option 1: Automated Script
**Linux/Mac:**
```bash
bash deploy.sh
```

**Windows:**
```bash
deploy.bat
```

#### Option 2: Manual Steps
```bash
# Extract archive
unzip pdf-miniapp-github.zip

# Navigate to app
cd pdf-miniapp

# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build
```

## 📦 What's Included

- ✅ **Automated extraction** of mini app from ZIP
- ✅ **Production build** optimization
- ✅ **GitHub Pages** deployment
- ✅ **Docker** containerization
- ✅ **Nginx** reverse proxy
- ✅ **Cross-platform** deployment scripts
- ✅ **CI/CD** automation with GitHub Actions

## 🌐 Deployment Options

### 1. GitHub Pages (Automatic) ⭐ Recommended
- Triggered on every push to `main`
- Zero configuration needed
- Live at: https://r84050.github.io/Photo-pdf

### 2. Docker
```bash
docker build -t photo-pdf-miniapp .
docker run -p 3000:3000 photo-pdf-miniapp
```

### 3. Docker Compose
```bash
docker-compose up -d
```

### 4. Local Development
```bash
cd pdf-miniapp
npm run dev
```

## 📊 Project Structure

```
Photo-pdf/
├── pdf-miniapp-github.zip       # Source code archive
├── Dockerfile                    # Docker build config
├── docker-compose.yml            # Multi-container setup
├── nginx.conf                    # Reverse proxy config
├── deploy.sh                     # Linux/Mac deployment
├── deploy.bat                    # Windows deployment
├── github-pages-deploy.yml       # GitHub Actions workflow
├── BUILD_ANALYSIS.md             # Build architecture
├── DEPLOYMENT.md                 # Deployment guide
└── GITHUB_PAGES_SETUP.md        # Pages setup guide
```

## 🔄 Deployment Workflow

```
1. Push to main branch
   ↓
2. GitHub Actions triggered automatically
   ↓
3. ZIP archive extracted
   ↓
4. Dependencies installed (npm install)
   ↓
5. Production build created (npm run build)
   ↓
6. Built artifacts deployed to GitHub Pages
   ↓
7. Live application available at GitHub Pages URL
```

## 📈 Features

- 🎯 **Automatic Deployment** - Every push to main triggers build & deploy
- 📦 **ZIP Extraction** - Automatically extracts and builds source
- 🐳 **Docker Ready** - Containerized deployment
- ⚡ **Performance Optimized** - Minification, compression, caching
- 🔒 **Security Headers** - Nginx security configuration
- 📱 **Responsive Design** - Works on all devices
- 🌍 **HTTPS** - Automatic via GitHub Pages

## 🛠️ Available Commands

| Command | Purpose |
|---------|---------|
| `bash deploy.sh` | Deploy on Linux/Mac |
| `deploy.bat` | Deploy on Windows |
| `docker build -t photo-pdf-miniapp .` | Build Docker image |
| `docker-compose up -d` | Start with Docker Compose |
| `npm run dev` (in pdf-miniapp) | Development server |
| `npm run build` (in pdf-miniapp) | Production build |

## 📋 Configuration Files

### GitHub Actions Workflow
- **File**: `github-pages-deploy.yml`
- **Triggers**: Push to main, manual workflow dispatch
- **Output**: Deployed to GitHub Pages automatically

### Docker Configuration
- **Dockerfile**: Multi-stage build for optimization
- **docker-compose.yml**: Full stack with Nginx proxy

### Deployment Scripts
- **deploy.sh**: Bash script for Unix-like systems
- **deploy.bat**: Batch script for Windows

## 🎯 GitHub Pages Setup

1. ✅ Repository created
2. ✅ Workflow configured
3. ✅ Pages deployment enabled
4. ✅ HTTPS enabled automatically
5. ✅ Live at: https://r84050.github.io/Photo-pdf

## 📖 Documentation

- **BUILD_ANALYSIS.md** - Deep dive into build process
- **DEPLOYMENT.md** - Comprehensive deployment guide
- **GITHUB_PAGES_SETUP.md** - Pages setup details

## ⚡ Performance

The deployed application includes:
- Gzip compression
- Minified assets
- Code splitting
- Browser caching
- CDN via GitHub infrastructure

## 🔍 Monitoring

Check deployment status:
1. Go to **Actions** tab in repository
2. View workflow runs
3. Check build logs for any issues

## 🚨 Troubleshooting

### Build Failed?
1. Check Actions tab for error logs
2. Verify `npm run build` works locally
3. Ensure all dependencies are in package.json

### App Not Updating?
1. Wait 2-3 minutes for GitHub Pages to propagate
2. Hard refresh browser (Ctrl+Shift+R or Cmd+Shift+R)
3. Check Actions tab for successful deployment

### CORS Issues?
1. Check nginx.conf for proper CORS headers
2. Verify API endpoints are accessible

## 📞 Support

For issues or questions, check:
- GitHub Actions logs
- Build output in `dist/` folder
- Browser console for runtime errors

## 📄 License

MIT

---

**Status**: ✅ Ready for Production  
**Last Updated**: 2026-06-16  
**Deployment**: Automatic via GitHub Actions
