import 'package:flutter/material.dart';
import 'package:steel_alert/locator.dart';
import 'package:steel_alert/steel_alert_dialog.dart';
import 'package:steel_alert/steel_alert_impl.dart';

final steelAlert = locator<SteelAlert>();

class SteelAlert extends SteelAlertImpl {
  final GlobalKey<NavigatorState> navigatorKey;

  SteelAlert(this.navigatorKey);

  @override
  BuildContext? get context => navigatorKey.currentContext;

  @override
  Future<void> error({String? title, String? message}) async {
    if (context == null) {
      throw StateError('context is null');
    }
    await showAdaptiveDialog(
      context: context!,
      builder: (context) {
        return SteelAlertDialog(
          title: title,
          content: message,
          actionText: 'OK',
          type: SteelAlertType.error,
        );
      },
    );
  }

  @override
  Future<void> info({String? title, String? message}) async {
    if (context == null) {
      throw StateError('context is null');
    }
    await showAdaptiveDialog(
      context: context!,
      builder: (context) {
        return SteelAlertDialog(
          title: title,
          content: message,
          actionText: 'OK',
          type: SteelAlertType.info,
        );
      },
    );
  }

  @override
  Future<void> success({String? title, String? message}) async {
    if (context == null) {
      throw StateError('context is null');
    }
    await showAdaptiveDialog(
      context: context!,
      builder: (context) {
        return SteelAlertDialog(
          title: title,
          content: message,
          actionText: 'OK',
          type: SteelAlertType.success,
        );
      },
    );
  }

  @override
  Future<void> warning({String? title, String? message}) async {
    if (context == null) {
      throw StateError('context is null');
    }
    await showAdaptiveDialog(
      context: context!,
      builder: (context) {
        return SteelAlertDialog(
          title: title,
          content: message,
          actionText: 'OK',
          type: SteelAlertType.warning,
        );
      },
    );
  }
}
