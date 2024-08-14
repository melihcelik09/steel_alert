import 'package:flutter/material.dart';
import 'package:steel_alert/locator.dart';
import 'package:steel_alert/steel_alert.dart';

void main() {
  setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: steelAlert.navigatorKey,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  steelAlert.error(
                    title: "Error",
                    message: 'Error message',
                  );
                },
                child: const Text('Error'),
              ),
              ElevatedButton(
                onPressed: () {
                  steelAlert.info(
                    title: "Info",
                    message: 'Info message',
                  );
                },
                child: const Text('Info'),
              ),
              ElevatedButton(
                onPressed: () {
                  steelAlert.success(
                    title: "Success",
                    message: 'Success message',
                  );
                },
                child: const Text('Success'),
              ),
              ElevatedButton(
                onPressed: () {
                  steelAlert.warning(
                    title: "Warning",
                    message: 'Warning message',
                  );
                },
                child: const Text('Warning'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
