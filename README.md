# sicte_sas_ccot

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# --------------------------------------------------------------------------------------------------

# Sicte SAS CCOT Flutter

### Configurar variables de entorno sobre terminal solo para esa sesion de terminal
set FLUTTER_HOME=C:\src\flutter
set PATH=%FLUTTER_HOME%\bin;%PATH%
flutter doctor

### Para ver que path estan configuradas
echo %PATH%

### Para habilitar todas las plataformas
flutter config --enable-web
flutter config --enable-macos-desktop
flutter config --enable-windows-desktop
flutter config --enable-linux-desktop

### Verificar los dispositivos
```bash
flutter devices
```

### Para crear proyecto
flutter create sicte_sas_ccot

### Para ejecutar el proyecto en DEV
#### Android
flutter run -d android
#### Android apuntando al dispositivo
flutter run -d 13620dcb
#### iOS (solo en Mac)
flutter run -d ios
#### Web (Chrome)
flutter run -d chrome
#### Windows
flutter run -d windows


### Para construir el proyecto
#### Android
flutter build apk
#### iOS (solo en Mac)
flutter build ios
#### Web (Chrome)
flutter build web
#### Windows
flutter build windows