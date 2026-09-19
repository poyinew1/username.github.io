# MBDA Website Deployment Guide

## Prerequisites

1. **Install Git** (if not already installed)
   - Download from: https://git-scm.com/download/win
   - Install with default settings
   - Restart your terminal/command prompt after installation

2. **Create GitHub Account** (if you don't have one)
   - Go to: https://github.com/signup
   - Create a free account

## Step 1: Initialize Git Repository

Open Command Prompt or PowerShell and run:

```bash
cd C:\Users\sonny\Desktop\MBDAWEB
git init
```

## Step 2: Add Files to Git

```bash
git add .
```

## Step 3: Make Initial Commit

```bash
git commit -m "Initial commit - MBDA Monitoring System with mobile app design"
```

## Step 4: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `mbda-monitoring-system`
3. Description: `MBDA Monitoring System - Road safety incident tracking with mobile app design`
4. Make it **Public** (recommended for Vercel free tier)
5. **Don't** initialize with README, .gitignore, or license (we already have them)
6. Click "Create repository"

## Step 5: Connect Local Repository to GitHub

After creating the repository, GitHub will show you commands. Run these in your terminal:

```bash
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/mbda-monitoring-system.git
git push -u origin main
```

Replace `YOUR_USERNAME` with your actual GitHub username.

## Step 6: Deploy to Vercel (Fixed for 404 Error)

### Option A: Using Vercel Dashboard (Recommended - Fixes 404 Error)

1. Go to https://vercel.com/signup
2. Sign up with your GitHub account
3. Click "Add New Project"
4. Import your `mbda-monitoring-system` repository
5. **IMPORTANT: Configure these settings exactly:**
   - **Framework Preset**: **Other**
   - **Root Directory**: `./` (leave as default)
   - **Build Command**: (leave empty)
   - **Output Directory**: `./` (this is crucial!)
6. Click "Deploy"

### Option B: Using Vercel CLI

1. **Install Vercel CLI**
   ```bash
   npm install -g vercel
   ```

2. **Login to Vercel**
   ```bash
   vercel login
   ```

3. **Deploy**
   ```bash
   cd C:\Users\sonny\Desktop\MBDAWEB
   vercel
   ```

4. **Follow the prompts:**
   - Set up and deploy? → **Y**
   - Link to existing project? → **N**
   - Project name: `mbda-monitoring-system`
   - Directory: `./`
   - Override settings? → **N**

## Step 7: Fix 404 Error (If You Already Deployed)

If you're seeing a 404 error, follow these steps:

### Method 1: Redeploy with Correct Settings

1. Go to your Vercel project dashboard
2. Click "Settings" → "General"
3. Scroll to "Build & Development Settings"
4. **Change "Output Directory" to: `./`** (this is the fix!)
5. Click "Save"
6. Go to "Deployments" and click "Redeploy"

### Method 2: Check File Structure

Make sure your GitHub repository has these files in the **root directory**:
- `index.html` (main entry point)
- `login.html`
- `register.html`
- `vercel.json`
- `.gitignore`

The structure should be:
```
mbda-monitoring-system/
├── index.html
├── login.html
├── register.html
├── vercel.json
├── .gitignore
├── DEPLOYMENT_GUIDE.md
└── start-server.bat
```

### Method 3: Update vercel.json

Delete the current `vercel.json` and create a simple one:

```json
{
  "version": 2
}
```

Then redeploy.

## Step 8: Configure Custom Domain (Optional)

After deployment, you can:
1. Go to Vercel project settings
2. Click "Domains"
3. Add your custom domain (e.g., `mbda.yourdomain.com`)
4. Follow DNS instructions

## Step 9: Test Your Deployed Site

Your site will be available at:
- Vercel URL: `https://mbda-monitoring-system.vercel.app`
- Or: `https://your-project-name.vercel.app`
- Custom domain (if configured)

**Test URLs:**
- Main site: `https://your-project-name.vercel.app/`
- Login: `https://your-project-name.vercel.app/login.html`
- Register: `https://your-project-name.vercel.app/register.html`

## Project Files Overview

- `index.html` - Main application file
- `login.html` - Login page
- `register.html` - Registration page
- `start-server.bat` - Local development server
- `vercel.json` - Vercel configuration
- `.gitignore` - Git ignore rules
- `DEPLOYMENT_GUIDE.md` - This file

## Troubleshooting

### 404 NOT_FOUND Error (Most Common)

**Problem:** "This page doesn't exist" on Vercel

**Solution:**
1. The main issue is usually the **Output Directory** setting
2. Go to Vercel → Settings → Build & Development Settings
3. Set **Output Directory** to: `./` (not `dist`, `build`, or anything else)
4. Redeploy the project
5. Make sure `index.html` is in the root of your repository

### Git Commands Not Working
- Make sure Git is installed: https://git-scm.com/download/win
- Restart your terminal after installation
- Check with: `git --version`

### GitHub Authentication Issues
- Use Personal Access Token if password authentication fails
- Create token at: https://github.com/settings/tokens
- Select "repo" scope when creating token

### Vercel Deployment Issues
- Make sure your repository is public on GitHub
- Check Vercel deployment logs for errors
- Verify file structure matches requirements
- **Check Output Directory setting is `./`**

### Mobile Features Not Working
- The site automatically detects screen size
- Test by resizing browser window
- Check browser console for JavaScript errors

### Files Not Showing on Vercel
- Verify files are committed to Git
- Check GitHub repository to see all files
- Make sure `index.html` exists in root directory
- Redeploy after pushing new changes

## Next Steps

After successful deployment:
1. Test all features on the live site
2. Share the Vercel URL with stakeholders
3. Set up custom domain for professional appearance
4. Configure environment variables if needed
5. Set up continuous deployment for automatic updates

## Quick Fix Summary for 404 Error

If you're seeing the 404 error, the fix is simple:

1. Go to your Vercel project
2. Settings → Build & Development Settings
3. Change **Output Directory** to: `./`
4. Save and redeploy

This tells Vercel to serve files from the root directory, where your `index.html` is located.

## Support

- GitHub Documentation: https://docs.github.com
- Vercel Documentation: https://vercel.com/docs
- MBDA System Support: support@mbda.euzch