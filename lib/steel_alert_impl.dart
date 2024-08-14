import 'package:flutter/material.dart';

abstract class SteelAlertImpl {
  BuildContext? get context;
  Future<void> warning({String? title, String? message});
  Future<void> error({String? title, String? message});
  Future<void> info({String? title, String? message});
  Future<void> success({String? title, String? message});
}
