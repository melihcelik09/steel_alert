import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:steel_alert/src/alerts/steel_alert.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => SteelAlert(GlobalKey<NavigatorState>()));
}
