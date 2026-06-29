# Git Setup & Image Upload - Complete Guide

## 🚨 Issue Identified
Your local folder is **NOT a git repository** yet, so the images haven't been pushed to GitHub. That's why they're not showing on the website.

## ✅ Complete Setup Instructions

### Step 1: Initialize Git Repository
Open Command Prompt or PowerShell in your project folder and run:

```bash
cd "d:\000000000\Desktop\REHAN BHAI WEBSITES\Ibrarhim-Industries\Kiro"
git init
```

### Step 2: Add Remote Repository
```bash
git remote add origin https://github.com/devsfolk/Ibraheem-Industries.git
```

### Step 3: Create .gitignore (Optional but Recommended)
Create a file named `.gitignore` in your project root with this content:
```
node_modules/
.DS_Store
Thumbs.db
*.log
.vscode/
```

### Step 4: Stage ALL Files (Including Images)
```bash
git add .
```

**CRITICAL:** This will add:
- All 8 HTML files
- All 30 images in the `images/` folder
- script.js
- favicon.svg
- All documentation files

### Step 5: Commit Your Changes
```bash
git commit -m "Initial commit: Complete website with all images and updated paths"
```

### Step 6: Set Default Branch to Main
```bash
git branch -M main
```

### Step 7: Push to GitHub (Force Push Required)
Since the repository might already have some files, use force push:
```bash
git push -u origin main --force
```

**Note:** Use `--force` carefully as it will overwrite any existing content on GitHub with your local version.

---

## 🔍 Verify Images Were Pushed

After pushing, check if images are in the repository:

### Method 1: Check on GitHub Website
1. Go to: https://github.com/devsfolk/Ibraheem-Industries
2. You should see an `images/` folder
3. Click on it - should show 30 .jpg files

### Method 2: Test Raw Image URL
Try opening this in your browser:
```
https://raw.githubusercontent.com/devsfolk/Ibraheem-Industries/main/images/hero-wheat-fields.jpg
```
If it shows an image, your upload worked!

### Method 3: Check Your Live Site
Visit: https://devsfolk.github.io/Ibraheem-Industries/

Images should now display. If not, wait 2-3 minutes and hard refresh (`Ctrl+Shift+R`).

---

## 🎯 Alternative: GitHub Desktop (Easier Method)

If you prefer a GUI instead of command line:

### Step 1: Download GitHub Desktop
https://desktop.github.com/

### Step 2: Clone Your Repository
1. Open GitHub Desktop
2. File → Clone Repository
3. Select `devsfolk/Ibraheem-Industries`
4. Choose a location (NOT your current Kiro folder)

### Step 3: Copy Your Files
1. Copy ALL files from your current Kiro folder
2. Paste into the cloned repository folder
3. Replace any existing files

### Step 4: Commit and Push
1. GitHub Desktop will show all changed files
2. Write commit message: "Add complete website with all images"
3. Click "Commit to main"
4. Click "Push origin"

---

## 🛠️ Troubleshooting

### If Images Still Don't Show After Push

**Issue 1: Images folder not uploaded**
Check file size limits. GitHub has a 100MB file size limit per file.

Solution:
```bash
# Check image file sizes
dir images /s
```

If any image is over 100MB, compress it before pushing.

**Issue 2: Case sensitivity**
GitHub is case-sensitive. Ensure:
- Folder name: `images` (lowercase)
- File extensions: `.jpg` (lowercase)

**Issue 3: GitHub Pages not enabled**
1. Go to repository Settings
2. Click "Pages" in left sidebar
3. Under "Source", select "main" branch
4. Select "/ (root)" folder
5. Click "Save"

**Issue 4: Images in .gitignore**
Check if `.gitignore` accidentally excludes images:
```bash
git check-ignore images/*
```
If it returns files, edit `.gitignore` to remove image exclusions.

---

## 📋 Quick Command Reference

```bash
# Initialize and setup
git init
git remote add origin https://github.com/devsfolk/Ibraheem-Industries.git

# Stage everything
git add .

# Check what will be committed
git status

# Commit
git commit -m "Complete website with images"

# Push
git branch -M main
git push -u origin main --force

# Check remote
git remote -v

# View commit history
git log --oneline
```

---

## ✅ Final Checklist

Before considering this done:

- [ ] Git repository initialized locally
- [ ] Remote origin added
- [ ] All files staged (`git add .`)
- [ ] Changes committed
- [ ] Pushed to GitHub
- [ ] `images/` folder visible on GitHub
- [ ] Test image URL loads: https://raw.githubusercontent.com/.../hero-wheat-fields.jpg
- [ ] GitHub Pages enabled in Settings
- [ ] Live site shows images: https://devsfolk.github.io/Ibraheem-Industries/
- [ ] Browser cache cleared (`Ctrl+Shift+R`)

---

## 🆘 Still Having Issues?

Run these diagnostic commands and share the output:

```bash
# Check if git is installed
git --version

# Check current directory
cd

# Check files in images folder
dir images

# Check git status
git status

# Check remote
git remote -v
```
