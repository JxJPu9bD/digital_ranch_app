# GEMINI.md - digital_ranch_app

## Project Overview

This is a Flutter application for "Digital Ranch" management. Based on the file structure and dependencies, it's a mobile app for both Android and iOS. The app uses the GetX framework for state management, routing, and dependency injection. It also includes features like screen adaptation, local storage, and network requests through the Dio package.

The application seems to be designed for managing various aspects of a cattle ranch, including:

*   **Business Records:** Batch entry, entry/exit records, transfer records, ear tag management, device binding, file records, disinfection records, breeding files, perinatal records, growth records, condition records, cattle inventory, video monitoring, and patrol records.
*   **Home/Dashboard:** Data analysis, data reports, data summary, charts, and business-specific sections for breeding, disease/health, and calf management.
*   **News and Consultation:** A section for news and online consultation.
*   **User Profile:** User information management.

## Building and Running

To build and run this project, you'll need to have the Flutter SDK installed.

**1. Install dependencies:**

```bash
flutter pub get
```

**2. Run the app:**

```bash
flutter run
```

**3. Build the app:**

For Android:

```bash
flutter build apk
```

For iOS:

```bash
flutter build ios
```

## Development Conventions

*   **State Management:** The project uses the GetX package for state management. Each feature module has its own controller and bindings.
*   **Routing:** GetX is also used for routing. All routes are defined in `lib/app/routes/app_pages.dart`.
*   **UI:** The app uses the `flutter_screenutil` package for responsive UI design.
*   **Project Structure:** The project follows a modular structure, with each feature located in its own directory under `lib/app/modules`. Each module contains its own `view`, `controller`, and `binding`.
*   **API Communication:** The `dio` package is used for making HTTP requests to a backend API. The environment configuration in `lib/app/core/config/env_config.dart` suggests that there are different API endpoints for development and production.
*   **Local Storage:** The `shared_preferences` package is used for simple local data storage.
