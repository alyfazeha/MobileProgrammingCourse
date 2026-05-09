**Name:** *Alyfa Zahra Qurrota Aini*  
**NIM:** *244107060057*  
**Major:** *D-IV Business Information System*  
**Class:** *2G*  

# Flutter Practicum Report – Week 12
This document is a practicum report that explains the integration of Firebase Authentication and OpenWeather API into a Flutter application. It covers the setup process, implementation details, and result analysis.

## Setup Process
---
### 1. Firebase Configuration
The following steps were completed to set up the backend:
1. Created a new project "weather app" in Firebase Console.
2. Enabled Email/Password Authentication as the sign-in provider.
3. Registered a test user account (`akuntest@gmail.com`) with the password `test123`.

### 2. Integration & CLI Setup
Used FlutterFire CLI to connect the local project to the Firebase project:
* Logged in via Firebase CLI to authorize the development environment.
* Configured the Flutter app to use Firebase services, generating the necessary configuration files.

---
## Implementation
### Firebase Authentication
Implemented a login page with email and password validation. The UI features a clean "Welcome Back" card design over a blue gradient background.

**Result:**
The login process works successfully, authenticating the user against the Firebase database before granting access to the weather information.

### Weather API Integration
Integrated OpenWeather API to fetch real-time weather data. The app displays the temperature, location name, and a descriptive weather icon (e.g., Overcast Clouds).

**Result:**
Users can search for different cities, and the app updates the display with accurate temperature and weather status.

---
## Result Analysis

### 1. Firebase & CLI Setup
| Firebase Dashboard | Auth Configuration | CLI Success |
| :---: | :---: | :---: |
| ![Firebase](docs/1.%20Create%20Project%20Weather%20App%20in%20Firebase.png) | ![Auth](docs/2.%20Setting%20Authentification.png) | ![CLI](docs/4.%20CLI%20Success.png) |

### 2. User Interface & Login
| User Management | Login Page UI |
| :---: | :---: |
| ![Users](docs/3.%20Adding%20New%20Account%20(Email%20n%20Password).png) | ![Login](docs/5.%20Login%20Page.png) |

### 3. Final Result (Weather API)
| Weather in East Kalimantan, Jakarta, and Malang|
| :---: |
| ![Kaltim, Jakarta, Malang](docs/6.%20After%20Success%20Login%20(Can%20See%20Weather).jpg) |

---
## Conclusion
The practicum was completed successfully. The application successfully manages user authentication via Firebase and provides dynamic weather updates using the OpenWeather API. The integration of backend services and external APIs demonstrates a functional and secure mobile application structure.