# GitHub Setup for Vercel Deployment

## Step-by-Step GitHub Setup

### Option 1: Using GitHub Website (Easiest)

1. **Create GitHub Account** (if you don't have one)
   - Go to https://github.com
   - Sign up for free account

2. **Create New Repository**
   - Click "+" in top-right corner
   - Select "New repository"
   - Repository name: `mbda-monitoring-system` (or your preferred name)
   - Description: "MBDA Monitoring System - Incident Management Website"
   - Make it **Public** (easier for Vercel access)
   - Click "Create repository"

3. **Upload Your Files**
   - On the repository page, click "uploading an existing file"
   - Drag and drop these files:
     - index.html
     - login.html
     - register.html
     - Bataan Province (SEAL) 2026.png
     - MBDA LOGO.jpg
     - vercel.json
     - package.json
     - README.md
     - .gitignore
   - Click "Commit changes"

### Option 2: Using Git Command Line

1. **Install Git** (if not installed)
   - Download from https://git-scm.com/downloads
   - Install with default settings

2. **Initialize Git Repository**
   ```bash
   cd "C:\Users\POY\Desktop\MBDA WEBSITE"
   git init
   ```

3. **Add All Files**
   ```bash
   git add .
   ```

4. **Commit Changes**
   ```bash
   git commit -m "Initial commit - MBDA Monitoring System"
   ```

5. **Create GitHub Repository**
   - Go to GitHub and create a new repository
   - Copy the repository URL

6. **Connect to GitHub**
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/mbda-monitoring-system.git
   git branch -M main
   git push -u origin main
   ```

## Files to Upload

### Required Files:
- ✅ index.html
- ✅ login.html
- ✅ register.html
- ✅ vercel.json
- ✅ package.json

### Asset Files:
- ✅ Bataan Province (SEAL) 2026.png
- ✅ MBDA LOGO.jpg

### Documentation:
- ✅ README.md
- ✅ .gitignore
- ✅ DEPLOY-VERCEL.md

## After GitHub Setup

### Verify Repository
- Go to your GitHub repository
- Check all files are present
- Verify images uploaded correctly
- Ensure no sensitive data is committed

### Ready for Vercel
Once your repository is on GitHub:
1. Go to https://vercel.com/new
2. Click "Import" on your repository
3. Deploy!

## Troubleshooting

### Issue: "File too large"
**Solution**: GitHub has 100MB file size limit. Your images should be fine.

### Issue: "Upload failed"
**Solution**: Try uploading files in smaller batches.

### Issue: "Git not recognized"
**Solution**: Use the GitHub website upload method instead.

## Security Notes

⚠️ **Important**: 
- Don't commit sensitive data (API keys, passwords)
- This demo uses LocalStorage - safe for public repo
- For production, move sensitive data to environment variables

## Next Steps

1. ✅ Complete GitHub setup
2. ✅ Verify all files are uploaded
3. ✅ Go to Vercel and deploy
4. ✅ Test your live website

---

**Your repository will be ready for Vercel deployment once uploaded to GitHub!**
