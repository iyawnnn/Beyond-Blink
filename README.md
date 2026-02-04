# 📱 Project: Beyond Blink Mobile App

## 📋 Project Overview
**Goal:** Convert "Beyond Blink" Figma/Canva designs into a Flutter Frontend APK.
**Stack:** Flutter (Dart), GoRouter, Google Fonts.
**Constraint:** No API, No Database. Frontend UI/UX focus only.

---

## ⚡ Quick Start (For Developers)

**1. Clone & Install**
```bash
git clone [https://github.com/iyawnnn/Beyond-Blink.git](https://github.com/iyawnnn/Beyond-Blink.git)
cd Beyond-Blink
flutter pub get
```

**2. Run App**
flutter run

## Phase 2: Architecture & Dependencies

To ensure the code is clean and scalable, we will use a **Feature-Based Folder Structure**.

### 1. Folder Structure
```text
lib/
├── core/
│   ├── assets/              # Asset paths
│   ├── themes/               # AppColors, TextStyles (The Navy Blue Theme)
│   └── constants/      # Strings
├── router/
│   └── app_router.dart      # Navigation Logic (GoRouter)
├── features/
│   ├── auth/                # Login Screen
│   ├── dashboard/           # Home Screen with Horizontal Scroll
│   ├── cart/                # Cart List
│   ├── profile/             # User Profile
│   └── splash/              # Initial Loading Screen
└── main.dart
```

### 2. Key Libraries (Add these to pubspec.yaml)
* **`go_router`**: For handling navigation and routing (Best Practice).
* **`google_nav_bar`** (or `flutter_svg`): For the bottom navigation icons.
* **`google_fonts`**: To match the typography in your design.

---

## Phase 3: Navigation & Linking Strategy

We will use a **Shell Route** approach. The Bottom Navbar will persist while the pages inside change.

### Route Definitions

**1. Splash Screen**
* **Path:** `/`
* **Parent:** None (Stand-alone)
* **Logic:** Checks "fake" loading delay, then redirects to Login.

**2. Login Screen**
* **Path:** `/login`
* **Parent:** None (Stand-alone)
* **Logic:** Full screen. Clicking "Login" redirects to `/home`.

**3. Dashboard (Home)**
* **Path:** `/home`
* **Parent:** Shell (Inside Navbar)
* **Tab Index:** 0
* **Logic:** Displays the main horizontal lists (Sun Glasses, Frames).

**4. Cart Page**
* **Path:** `/cart`
* **Parent:** Shell (Inside Navbar)
* **Tab Index:** 1
* **Logic:** Displays selected items and a checkout button.

**5. Profile Page**
* **Path:** `/profile`
* **Parent:** Shell (Inside Navbar)
* **Tab Index:** 2
* **Logic:** Displays user details and "Log Out" (which goes back to `/login`).

---

## Phase 4: Collaboration & Task Split

**Do not push to `main` directly.** Create branches for your features.

### Teammate's Tasks (Branch: `feature/auth-profile`)
1.  **Login Page:**
    * Implement the layout from `2.png`.
    * Create the Input Fields and "Login" button.
    * **Action:** Clicking Login redirects to `/home`.
2.  **Profile Page:**
    * Implement layout from `6.png`.
    * List the buttons (Edit Profile, Log out, etc.).
    * **Action:** Clicking "Log out" redirects to `/login`.

### Your Tasks (Branch: `feature/dashboard-nav`)
1.  **Navigation Setup:**
    * Set up `go_router` and the `Scaffold` with the Bottom Navigation Bar.
2.  **Dashboard (Home):**
    * Implement layout from `3.png` and `4.png`.
    * Create the Horizontal Category Scroll (Sun Glasses, Style Frames).
    * Create the Vertical "Popular" list.
3.  **Cart Page:**
    * Implement layout from `5.png`.
    * Static list of items with a "Checkout" button.

---

## Checklist for Submission
- [ ] Splash Screen (3 seconds delay).
- [ ] Login Screen (Static validation).
- [ ] Dashboard (Scrollable lists).
- [ ] Profile Page.
- [ ] Cart Page.
- [ ] Build APK (`flutter build apk`).
- [ ] Record Screen interaction.