# Beyond Blink: Mobile App Project

## Project Overview
**Goal:** Convert "Beyond Blink" designs into a Flutter APK.
**Stack:** Flutter, GoRouter, Google Fonts (Poppins).
**Status:** Project Setup Complete. Ready for feature development.

---

## Quick Start (For Developers)

1. Get the Code
   git clone https://github.com/iyawnnn/Beyond-Blink.git
   cd Beyond-Blink
   flutter pub get

2. Run the App
   flutter run

---

## Architecture & File Map

The project uses a Feature-First structure. Please respect these locations:

### lib/core/ (Shared Resources)
* themes/: Contains app_colors.dart (Navy Blue palette) and app_theme.dart (Poppins font settings).
  * Usage: Colors are applied automatically via Theme.of(context).
* assets/: (Future) Place all images here.

### lib/features/ (The Screens)
Each feature has its own folder. Work only in your assigned folder.
* auth/: Login Screen logic.
* dashboard/: Home & Items List logic.
* profile/: User Profile logic.
* cart/: Cart & Checkout logic.
* splash/: Initial loading screen.

### lib/router/ (Navigation)
* app_router.dart: Controls all navigation paths.
  * Usage: Use context.go('/login') or context.go('/dashboard') to navigate.

---

## Route Cheat Sheet

| Screen | Route Path | Status |
| :--- | :--- | :--- |
| Splash | / | Wiring Complete |
| Login | /login | Wiring Complete |
| Dashboard | /dashboard | Wiring Complete |
| Items List | /dashboard/items | Wiring Complete |
| Profile | /profile | Wiring Complete |
| Cart | /cart | Wiring Complete |

---

## Task Assignments

**Branch: feature/teammate-tasks (Teammate)**
1. Login Page (features/auth):
   * Build UI based on design 2.png.
   * Link "Login" button to /dashboard.
2. Profile Page (features/profile):
   * Build UI based on design 6.png.
   * Link "Log Out" button to /login.
3. Splash Screen (features/splash):
   * Implement 3-second delay and logo.

**Branch: feature/dashboard-nav (Lead)**
1. Dashboard (features/dashboard):
   * Build UI based on design 3.png & 4.png.
   * Implement Horizontal Category Scroll.
   * Implement Vertical Popular List.
2. Items List (features/dashboard):
   * Create the "View All" items page.
3. Cart Page (features/cart):
   * Build UI based on design 5.png.
4. Navigation Bar (router):
   * Finalize the Bottom Navigation Bar UI and routing logic.

---

## Submission Checklist
- [x] Phase 1: Project Setup & Architecture (Completed)
- [ ] Login Screen UI
- [ ] Dashboard Screen UI
- [ ] Profile Screen UI
- [ ] Cart Screen UI
- [ ] Final Build: Generate APK