import 'package:flutter/material.dart';
import 'package:steel_alert/src/constants/steel_alert_type.dart';
import 'package:steel_alert/src/helpers/locator.dart';
import 'package:steel_alert/src/widgets/steel_alert_widget.dart';

final steelAlert = locator<SteelAlert>();

abstract class SteelAlertImpl {
  BuildContext? get context;
  Future<void> warning({String? title, String? message});
  Future<void> error({String? title, String? message});
  Future<void> info({String? title, String? message});
  Future<void> success({String? title, String? message});
}

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
        return SteelAlertWidget(
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
        return SteelAlertWidget(
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
        return SteelAlertWidget(
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
        return SteelAlertWidget(
          title: title,
          content: message,
          actionText: 'OK',
          type: SteelAlertType.warning,
        );
      },
    );
  }
}
