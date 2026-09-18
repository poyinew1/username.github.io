# MBDA Website - Vercel Deployment Guide

## Quick Deployment Steps

### Option 1: Using Vercel Website (Easiest)

1. **Prepare Your Files**
   - Ensure all files are in the project folder
   - Check that `index.html`, `login.html`, `register.html` are present
   - Verify images are included

2. **Push to GitHub** (Required)
   - Create a new repository on GitHub
   - Upload/commit all files to the repository
   - Make sure the repository is public or has Vercel access

3. **Deploy to Vercel**
   - Go to https://vercel.com/new
   - Click "Import" on your GitHub repository
   - Vercel will automatically detect it as a static site
   - Click "Deploy"
   - Wait for deployment to complete (usually 30-60 seconds)
   - Your site will be live at: `https://your-project-name.vercel.app`

### Option 2: Using Vercel CLI

1. **Install Vercel CLI**
   ```bash
   npm i -g vercel
   ```

2. **Login to Vercel**
   ```bash
   vercel login
   ```

3. **Deploy**
   ```bash
   cd "C:\Users\POY\Desktop\MBDA WEBSITE"
   vercel
   ```

4. **Follow the prompts**
   - Set project name (e.g., mbda-monitoring-system)
   - Confirm settings
   - Deploy to production

## Pre-Deployment Checklist

### ✅ Files Ready
- [ ] index.html
- [ ] login.html
- [ ] register.html
- [ ] Bataan Province (SEAL) 2026.png
- [ ] MBDA LOGO.jpg
- [ ] vercel.json
- [ ] package.json
- [ ] README.md

### ✅ Configuration
- [ ] vercel.json is present and configured
- [ ] No build errors in HTML files
- [ ] All relative paths are correct
- [ ] Images are properly referenced

### ✅ Testing
- [ ] Test website locally first
- [ ] Check all links work
- [ ] Verify forms submit correctly
- [ ] Test mobile responsiveness

## Post-Deployment Steps

### 1. Test Your Live Site
- Visit your Vercel URL
- Test all functionality
- Check mobile access
- Verify images load correctly

### 2. Custom Domain (Optional)
- Go to Vercel dashboard
- Navigate to Settings > Domains
- Add your custom domain
- Update DNS records as instructed

### 3. Environment Variables (Optional)
- If you need API keys or configuration
- Add them in Vercel dashboard
- Settings > Environment Variables

## Common Issues & Solutions

### Issue: "Build Failed"
**Solution**: Check that all HTML files are valid and no broken links exist

### Issue: "Images not loading"
**Solution**: Ensure image files are in the repository and paths are correct

### Issue: "Forms not working"
**Solution**: This is a static site - forms use LocalStorage, which works in browser

### Issue: "404 errors"
**Solution**: Check vercel.json configuration and file paths

## Project Files for Vercel

### Required Files:
- `index.html` (main page)
- `vercel.json` (configuration)
- `package.json` (metadata)

### Optional Files:
- `README.md` (documentation)
- `.gitignore` (version control)
- Any additional HTML/CSS/JS files

### Static Assets:
- Images (PNG, JPG, SVG)
- CSS files
- JavaScript files
- Fonts

## Vercel Configuration

Your `vercel.json` is already configured:
```json
{
  "version": 2,
  "cleanUrls": true,
  "trailingSlash": false
}
```

This means:
- Clean URLs (no .html extension needed)
- No trailing slashes
- Static site optimization

## Next Steps After Deployment

1. **Share the URL** with your team
2. **Test on mobile devices**
3. **Monitor performance** in Vercel dashboard
4. **Set up custom domain** if needed
5. **Configure analytics** (optional)

## Support

- Vercel Documentation: https://vercel.com/docs
- Vercel Community: https://vercel.com/community
- GitHub Issues: For project-specific issues

---

**Your website is ready for deployment! Follow the steps above to go live.**
