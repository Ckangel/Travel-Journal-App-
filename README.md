# Overview - Travel Journal App

The Travel Journal App is designed to help users capture and preserve their travel experiences in a simple, interactive way. Users can create entries that include text notes, photos taken with the phone’s camera, and location tags using GPS. These entries are stored locally so they remain available even after the app is closed or the phone is restarted.

To use the app, open the Home Screen to view your list of journal entries. Tap the **Add Entry** button to create a new record, where you can write notes, take a photo, and automatically tag your location. Saved entries can be revisited through the **View Entry** screen, which displays all details in a clean format.

The purpose of creating this app is to strengthen my skills in mobile development by learning Flutter and Dart, while also practicing integration with device components (camera, location services) and persistent storage. This project demonstrates how to build a cross-platform app with multiple screens, interactive features, and a smooth user experience.

[Software Demo Video](http://youtube.link.goes.here)

# Development Environment

The app was developed using:
- **Flutter SDK** for cross-platform mobile development
- **Dart** programming language
- **Android Studio** as the primary IDE
- **Emulator** for testing, with optional deployment to a physical Android device

Libraries and packages used:
- `image_picker` for camera/photo integration
- `geolocator` for location services
- `sqflite` for local SQLite database storage
- `provider` for state management

# Useful Websites

* [Flutter Documentation](https://docs.flutter.dev/)
* [Dart Language Tour](https://dart.dev/guides/language/language-tour)
* [Flutter SQLite Tutorial](https://flutter.dev/docs/cookbook/persistence/sqlite)
* [Geolocator Plugin](https://pub.dev/packages/geolocator)
* [Image Picker Plugin](https://pub.dev/packages/image_picker)

# Future Work

* Add cloud sync so entries can be backed up online and accessed across devices
* Implement search and filtering for journal entries by date or location
* Enhance UI with custom themes, animations, and improved layouts
* Add sharing functionality to export entries to social media or email
* Include audio recording as part of journal entries
