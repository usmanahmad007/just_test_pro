# Flutter Subscription App

## ✅ Task Completion
This project implements a simple subscription-based mobile application in Flutter, including onboarding, paywall, persistent subscription state, and a main screen.

---

## 🏗 Architecture

The app follows a simple layered architecture:

- **Presentation Layer (UI)**  
  Contains all screens such as Splash, Onboarding, Subscription, Thank You, and Home.

- **Business Logic Layer**  
  Subscription logic is separated into a dedicated backend/service class responsible for managing subscription state.

- **Persistence Layer**  
  Subscription state (subscribed or not, selected plan) is stored locally using SharedPreferences, ensuring persistence across app restarts.

---

## 📂 Project Structure

```
lib/
│
├── main.dart
│
├── splash screen/
│   └── splash_screen.dart
│
├── onboarding screen/
│   └── onboarding_screen.dart
│
├── home/
│   └── home screen/
│       └── home_screen.dart
│
├── Subscription/
│   ├── subscription backend/
│   │   └── subscription_backend.dart
│   └── subscription screen/
│       ├── subscription_screen.dart
│       └── thankyou_screen.dart
```

---

## 🔄 Subscription State Handling

- Subscription purchase is emulated (no real billing).
- Subscription status and selected plan are saved locally.
- On app relaunch:
  - Subscribed user → Home Screen
  - Non-subscribed user → Onboarding Screen

---

## 🚀 What Would Improve With More Time

- Real in-app purchase integration
- User authentication
- State management (BLoC / Riverpod / GetX)
- API or Firebase integration
- Animations and UI polish
- Unit and widget testing

---

## 🎥 Demo & Code
- Video: Screencast demonstrating full app flow
- GitHub: Repository containing complete source code
