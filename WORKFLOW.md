## Overview
**Goal:** Ensure smooth teamwork without code conflicts or lost work.

**Role:** Teammate / Developer

**Repository:** https://github.com/iyawnnn/Beyond-Blink.git

---

## Step 1: Initial Setup (Do Once)

**1. Clone the Repository:**
* Open your terminal/command prompt.
* Run the following command to download the project:
    ```bash
    git clone https://github.com/iyawnnn/Beyond-Blink.git
    cd Beyond-Blink
    ```

**2. Install Dependencies:**
* Download the required libraries (`go_router`, `google_nav_bar`, etc.):
    ```bash
    flutter pub get
    ```

**3. Verify Setup:**
* Run the app to ensure it works on your machine:
    ```bash
    flutter run
    ```

---

## Step 2: The Golden Rules

To avoid breaking the project, you must strictly follow these rules:

1.  **NEVER push directly to `main`:** The `main` branch is for final, working code only.
2.  **ALWAYS create a new branch:** Never code on the default branch.
3.  **ALWAYS pull before starting:** Ensure you have the latest code before you start working to avoid conflicts.

---

## Step 3: Daily Workflow Cycle

Follow this exact cycle every time you work on a feature.

### 1. Start Fresh
Before you start coding, get the latest updates from the team:
```bash
git checkout main
git pull origin main
```

### 2. Create Your Branch
Create a specific branch for your task (Authentication & Profile):

```bash
# Command: git checkout -b <branch_name>
git checkout -b feature/auth-profile
```

### 3. Code and Commit
```bash
# Add all changed files
git add .

# Save with a message (Be descriptive!)
git commit -m "Added login screen UI and input fields"
```

### 4. Upload (Push)
Send your branch to GitHub:
```bash
# Command: git push origin <branch_name>
git push origin feature/auth-profile
```

## Specific Task & Branch Guide
**Your Branch Name:** `feature/auth-profile`

### Teammate's Focus Areas
You will be working in these specific directories. Do not touch other folders to avoid conflicts.

**1. Login Logic:**
* **File:** `lib/features/auth/login_screen.dart`
* **Asset:** `assets/images/logo_blue_text.png`
* **Action:** When user clicks Login -> Navigate to `/home`.

**2. Profile Logic:**
* **File:** `lib/features/profile/profile_screen.dart`
* **Asset:** `assets/images/profile_user.png`
* **Action:** When user clicks Log Out -> Navigate to `/login`.

---

## Troubleshooting

**"I have a merge conflict!"**
1.  Don't panic.
2.  VS Code will highlight the conflicting lines in red.
3.  Choose "Accept Current Change" or "Accept Incoming Change" based on which code is correct.
4.  Save the file, `git add .`, and `git commit`.

**"The app won't run after I pulled!"**
Sometimes new libraries are added. Always run:

```bash
flutter pub get