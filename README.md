# 🍔 Food App 

A modern Flutter-based food ordering app powered by Firebase. Clean UI, login/signup, theme switching, and location-aware features make this app ideal for food delivery startups.

---

## 🚀 Features

✅ Firebase Authentication (Login/Signup)  
✅ Cloud Firestore Database  
✅ Light & Dark Mode Theme  
✅ Location-aware ordering (Geolocator)  
✅ Clean and Responsive UI  
✅ State management using Provider  
✅ Organized folder structure  
✅ Custom buttons and widgets  

---
## Dependencies  

Add these dependencies to your `pubspec.yaml`:  
```yaml
dependencies:
  flutter:
    sdk: flutter
  firebase_core: ^2.0.0
  firebase_auth: ^4.0.0
  cloud_firestore: ^4.0.0
  provider: ^6.0.0
  flutter_svg: ^2.0.0
  geolocator: ^10.0.0
```

## 📁 Project Structure

```
/lib
│── auth.dart
│── authservice.dart
│── button.dart
│── home.dart
│── login_or_regesti.dart
│── firebase_options.dart
│── my_current_loc.dart
│
├── image/
│   └── [App images]
│
├── modles/
│   ├── cart_item.dart
│   ├── food.dart
│   └── ...
│
├── theme/
│   ├── darkmode.dart
│   ├── lightmode.dart
│   ├── themeprovider.dart
│   └── ...

```

## Authentication Flow  
1. **Login/Signup**: User enters credentials and taps the login button.  
2. **Auth Gateway**: Determines if the user is logged in and navigates accordingly.  
3. **Home Page**: If login is successful, the user is redirected to the Home Page.  
4. **Logout**: Users can log out using the sign-out button.  

## How to run 

1. Clone the repo  
   ```sh
  git clone https://github.com/althaf-khan2005/Food_app.git
  cd Food_app
   ```
2. Install dependencies  
   ```sh
   flutter pub get
   ```
3. Run the app  
   ```sh
   flutter 

## Screenshots 

![Image](https://github.com/user-attachments/assets/0565a75b-5d0d-44a8-b4bb-e94792fe6ea4)
![Image](https://github.com/user-attachments/assets/7b0e2d9a-533b-44ac-83f7-fcc1dc2557dd)

![Image](https://github.com/user-attachments/assets/9b624333-6343-41dd-8245-3321d241898e)

![Image](https://github.com/user-attachments/assets/04dd8f38-b375-4e76-b112-bc5713550660)

![Image](https://github.com/user-attachments/assets/cf7272c4-e671-4f73-80c8-f843d5deec06)

![Image](https://github.com/user-attachments/assets/fde4a918-0e7b-47ef-8b69-325d101a300f)

![Image](https://github.com/user-attachments/assets/9fbfdd9b-e3c5-46c4-a231-e14063162100)

![Image](https://github.com/user-attachments/assets/500f833a-5759-4590-9ff4-75d86a365e4c)

