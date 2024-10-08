import 'package:flutter/material.dart';
import 'package:steel_alert/steel_alert.dart';

void main() {
  runApp(
    MaterialApp(
      navigatorKey: Steel.navigationKey,
      home: const MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                SteelAlert.success(
                  title: 'Success',
                  message: 'This is a success alert',
                );
              },
              child: const Text("Show Success Alert"),
            ),
            ElevatedButton(
              onPressed: () {
                SteelAlert.error(
                  title: 'Error',
                  message: 'This is an error alert',
                );
              },
              child: const Text("Show Error Alert"),
            ),
            ElevatedButton(
              onPressed: () {
                SteelAlert.warning(
                  title: 'Warning',
                  message: 'This is a warning alert',
                );
              },
              child: const Text("Show Warning Alert"),
            ),
          ],
        ),
      ),
    );
  }
}
