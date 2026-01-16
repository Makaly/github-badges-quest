# 🎯 START HERE - GitHub Badges Quest

## Welcome to Your Badge Earning Journey!

This repository contains everything you need to earn GitHub achievement badges.

---

## 🚀 Quick Start (5 Minutes)

### Step 1: Enable Achievements

**Go to:** https://github.com/settings/profile

1. Scroll to "Profile settings"
2. Check: ☑️ **"Show Achievements on my profile"**
3. Click "Update profile"

### Step 2: Push This Repository to GitHub

```bash
# 1. Create new repository on GitHub named "github-badges-quest"
#    (Don't add README, gitignore, or license - we already have them)

# 2. Run these commands:
cd /home/bigdev/Desktop/github-badges-quest

git branch -M main

git remote add origin https://github.com/YOUR-USERNAME/github-badges-quest.git

git push -u origin main
```

---

## 🏆 Earn Your First 4 Badges in 30 Minutes!

### Badge 1: 🚀 YOLO (5 minutes)

```bash
cd /home/bigdev/Desktop/github-badges-quest

# Run the automated script
./scripts/earn-yolo.sh

# Then on GitHub:
# 1. Create Pull Request from the branch
# 2. Immediately click "Merge" (don't request review!)
# 3. Badge earned! ✅
```

### Badge 2: ⚡ Quickdraw (10 minutes)

**Option A: Manual (Simple)**
```bash
# On GitHub, do this 10 times:
# 1. Go to "Issues" tab
# 2. Click "New issue"
# 3. Title: "Test issue #1" (increment number)
# 4. Click "Submit new issue"
# 5. IMMEDIATELY click "Close issue" (within 5 minutes!)
```

**Option B: Automated (Needs GitHub CLI)**
```bash
# Install GitHub CLI first: sudo apt install gh
# Then authenticate: gh auth login

# Run script
cd /home/bigdev/Desktop/github-badges-quest
./scripts/earn-quickdraw.sh

# Enter 10 when prompted
```

### Badge 3: 🦈 Pull Shark (10 minutes)

```bash
cd /home/bigdev/Desktop/github-badges-quest

# Create multiple feature branches
./scripts/earn-pull-shark.sh

# Push all branches
git push origin --all

# On GitHub:
# - Go to "Pull requests" tab
# - Create PR for each branch
# - Merge them all
# - Bronze badge at 2 PRs! ✅
```

### Badge 4: 👥 Pair Extraordinaire (5 minutes)

```bash
cd /home/bigdev/Desktop/github-badges-quest

# Create co-authored commits
./scripts/earn-pair-extraordinaire.sh

# Enter 1 when prompted (or 24 for Gold!)

# Push branches
git push origin --all

# Create and merge 1 PR on GitHub
# Bronze badge earned! ✅
```

---

## 📚 Complete Documentation

For detailed instructions on all badges, see:

**[BADGE_EARNING_GUIDE.md](BADGE_EARNING_GUIDE.md)** - Complete step-by-step guide

---

## 🎖️ All Available Badges

### Badges You Can Earn Today:

✅ **YOLO** 🚀 - Merge PR without review
✅ **Quickdraw** ⚡ - Close issue/PR within 5 min
✅ **Pull Shark** 🦈 - Merge multiple PRs
✅ **Pair Extraordinaire** 👥 - Co-authored commits
✅ **Galaxy Brain** 🧠 - Answer GitHub Discussions
✅ **Starstruck** ⭐ - Get stars on your repos
✅ **Public Sponsor** 💝 - Sponsor a developer ($1+)

### Historical Badges (Can't Earn):

❌ **Arctic Code Vault** 🏔️ - 2020 Arctic archive
❌ **Mars 2020 Helicopter** 🚁 - Mars mission code

---

## 🛠️ Available Scripts

All scripts are in the `scripts/` directory:

1. **earn-yolo.sh** - Creates YOLO merge branch
2. **earn-quickdraw.sh** - Creates/closes issues quickly
3. **earn-pull-shark.sh** - Creates 20 feature branches
4. **earn-pair-extraordinaire.sh** - Creates co-authored commits

**Run any script:**
```bash
cd /home/bigdev/Desktop/github-badges-quest
./scripts/SCRIPT_NAME.sh
```

---

## ✅ Checklist

- [ ] Enable achievements on GitHub profile
- [ ] Push this repository to GitHub
- [ ] Run YOLO script and merge PR
- [ ] Create and close 10 issues quickly
- [ ] Run Pull Shark script and merge 2+ PRs
- [ ] Run Pair Extraordinaire script and merge 1 PR
- [ ] Check your profile for badges!

---

## 🔍 Check Your Progress

Visit your GitHub profile:
```
https://github.com/YOUR-USERNAME
```

Badges appear in the "Achievements" section.

**Note:** Badges may take a few hours to appear. Be patient!

---

## 💡 Tips

1. **Start with easy badges:** YOLO, Quickdraw, Pull Shark Bronze
2. **Use automation:** Scripts save you tons of time
3. **Be patient:** Badges can take up to 24 hours to appear
4. **Stay ethical:** Don't spam real projects
5. **Have fun:** This is about learning GitHub features!

---

## ❓ Troubleshooting

**Badges not showing?**
- Make sure achievements are enabled in settings
- Wait 24 hours
- Clear browser cache
- Try incognito mode

**Scripts not running?**
- Make sure they're executable: `chmod +x scripts/*.sh`
- Check you're in the right directory
- Read any error messages carefully

**Can't push to GitHub?**
- Make sure you created the repository
- Check remote URL: `git remote -v`
- Verify GitHub authentication

---

## 📖 Further Reading

- [GitHub Achievements Documentation](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-profile/managing-contribution-settings-on-your-profile/showing-your-private-contributions-and-achievements-on-your-profile)
- [GitHub CLI Documentation](https://cli.github.com/manual/)
- [Complete Badge Guide](BADGE_EARNING_GUIDE.md)

---

## 🎉 Good Luck!

You've got everything you need to earn badges. Now go get them!

**Questions?** Check the [BADGE_EARNING_GUIDE.md](BADGE_EARNING_GUIDE.md) for more details.

Happy badge hunting! 🏆
