# Steel Alert

Steel alert is a UI Kit for Alert or Dilaogs. It comes with 3 types info, error and warning.

## Preview

### Success

![Success](assets/success.png)

### Error

![Error](assets/error.png)

### Warning

![Warning](assets/Warning.png)

## Getting started

Add the dependency in `pubspec.yaml`

```yaml
dependencies:
  steel_alert: ^0.0.1
```

## Usage

Firstly import the package

```dart

import 'package:steel_alert/steel_alert.dart';

```

After that you need to call `setupLocator` method in main function. And you must be define navigator key.

```dart

void main() {
  setupLocator();
  runApp(
    MaterialApp(
      navigatorKey: steelAlert.navigatorKey,
      home: const MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

```

Here is how you can call dialog in your project.

```dart

ElevatedButton(
              onPressed: () {
                steelAlert.success(
                  title: 'Success',
                  message: 'This is a success alert',
                );
              },
              child: const Text("Show Success Alert"),
            ),

```

We have 3 types for a now.

- steelAlert.success()
- steelAlert.error()
- steelAlert.warning()

## Feedback

Please feel free to [give me any feedback or file issue](https://github.com/melihcelik09/steel_alert/issues) helping support this plugin!
