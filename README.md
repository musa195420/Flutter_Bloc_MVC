![1_fod](https://github.com/user-attachments/assets/2b315496-c688-47df-a5a4-b1910a94b00b)

![2_fod](https://github.com/user-attachments/assets/a053977f-deac-4d5b-84a1-6d827d01fccc)

![3_fod](https://github.com/user-attachments/assets/d632eac4-60fb-4ba0-bf83-fba8608cac44)

![4_fod](https://github.com/user-attachments/assets/75b3a0c2-bda0-44ac-934b-cd932f11baaf)

![5_fod](https://github.com/user-attachments/assets/6c7988f2-13e2-43fd-9ec7-c3bbbf7bf6a0)

![6_fod](https://github.com/user-attachments/assets/4d9932b3-8212-44aa-b81f-aa80802b1c6a)

![7_fod](https://github.com/user-attachments/assets/d9e47df8-9270-4d16-b723-b74caa0346e6)

![8_fod](https://github.com/user-attachments/assets/5c092981-4075-429d-80a3-0120b7bf4b26)
![9_fod](https://github.com/user-attachments/assets/358a5eff-3ccf-4c18-a725-5691e26a37fe)



# 🍕 FOD - Food Delivery App (Flutter + BLoC + Firebase + Stripe)

A full-featured, modular food delivery application built with **Flutter**, leveraging **BLoC pattern**, **Firebase**, **Stripe**, and **MVC architecture**. The project supports a scalable backend using **Firebase Authentication**, **Firestore**, and **Realtime Database**, and features a **Stripe payment gateway** for seamless transactions.

This app offers a **real-time map-based delivery experience**, an **interactive UI**, and a **dedicated admin panel** for managing orders, users, and menu items.

---

## 📂 Directory Structure

musa195420-flutter_bloc_mvc/
├── lib/ # App entrypoint and core files
│ ├── blocs/ # BLoC logic
│ ├── components/ # Reusable UI components
│ ├── screens/ # Views grouped by feature (auth, home, etc.)
│ ├── helpers/ # Utility classes and extensions
│ └── firebase_options.dart
├── packages/
│ ├── pizza_repository/ # Menu items & nutritional data (modular package)
│ └── user_repository/ # User handling logic (modular package)
├── android/ # Native Android project
├── assets/ # Fonts, images, etc.
├── test/ # Unit and widget tests
├── pubspec.yaml # Root dependencies
└── firebase.json # Firebase config


> 📦 **Modular Repositories**  
> We've separated `pizza_repository` and `user_repository` into isolated packages with their own `pubspec.yaml` to reduce app size and improve maintainability.

---

## 🔧 Features

### ✅ Customer App:
- 🧭 Real-time GPS tracking of deliveries
- 📲 Firebase Authentication (email/password)
- 🧾 Secure payments via Stripe
- 🍕 Dynamic menu fetching with CRUD
- 🔔 Push notifications (Firebase)
- 🎨 Custom themes & components using MVC structure
- 📦 State management using BLoC

### ✅ Admin Panel:
- ✏️ Add/Edit/Delete menu items
- 🔥 Mark items as "hot" or featured
- 👀 Monitor real-time orders
- 🚚 Rider tracking on a map

---

## 🚀 Getting Started

### 1. Clone the repo

```bash
git clone https://github.com/musa195420/Flutter_Bloc_MVC.git
cd Flutter_Bloc_MVC


# Example root pubspec.yaml dependency
dependencies:
  pizza_repository:
    path: packages/pizza_repository


#MIT License © Musa195420



