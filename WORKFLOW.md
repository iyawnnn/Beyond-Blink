# Collaboration & Git Workflow

**Repository:** https://github.com/iyawnnn/Beyond-Blink.git

**Role:** Developer Guide

---

## The Golden Rules
To avoid breaking the project, you must strictly follow these rules:

1. NEVER push directly to main.
2. ALWAYS create a new branch before coding.
3. ALWAYS pull main before you start your day.

---

## Daily Workflow Cycle (Repeat This)

Every time you sit down to code, follow this exact cycle:

### 1. Update Your Code (Start Fresh)
Before writing a single line of code, get the latest updates:
```bash
   git checkout main
   git pull origin main
```

### 2. Create Your Branch
* Teammate: git checkout -b feature/teammate-tasks
* Lead: git checkout -b feature/dashboard-nav

### 3. Code & Save
Work on your assigned files in lib/features/. When ready to save:
```bash
   git add .
   git commit -m "feat: Built login input fields"
```

### 4. Upload to GitHub
```bash
   git push origin <your-branch-name>
```

---

## Where to work?

### Teammate (feature/teammate-tasks)
You own these files. You can edit them freely:
* lib/features/auth/login_screen.dart
* lib/features/profile/profile_screen.dart
* lib/features/cart/cart_screen.dart
* lib/features/splash/splash_screen.dart

### Lead (feature/dashboard-nav)
You own these files:
* lib/features/dashboard/
* lib/router/app_router.dart

---

## Troubleshooting

**"I have a merge conflict!"**
1. Don't panic. VS Code will highlight the conflicting lines in red.
2. Click "Accept Incoming Change" (if their code is newer) or "Accept Current Change" (if yours is better).
3. Save, git add ., and git commit.

**"The app won't run after I pulled!"**
Sometimes new packages are added. Always run:
   flutter pub get