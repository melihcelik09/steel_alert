import 'package:flutter/material.dart';
import 'package:steel_alert/src/constants/steel_alert_type.dart';
import 'package:steel_alert/src/widgets/steel_alert_widget.dart';

class Steel {
  Steel._();

  static final GlobalKey<NavigatorState> _globalKey =
      GlobalKey<NavigatorState>(debugLabel: "steelAlert");

  static GlobalKey<NavigatorState> get navigationKey => _globalKey;

  static BuildContext? get context => navigationKey.currentContext!;
}

class SteelAlert {
  SteelAlert._();

  /// Displays an adaptive dialog with a customizable alert widget.
  ///
  /// The dialog can be configured with a title, message, and action text.
  /// The type of alert is required and determines the visual styling of the dialog.
  ///
  /// Parameters:
  ///   [title] - The title of the alert (optional).
  ///   [message] - The message to be displayed in the alert (optional).
  ///   [type] - The type of alert, which determines the styling (required).
  ///   [actionText] - The text displayed on the action button (defaults to 'OK').
  ///
  /// Returns:
  ///   A [Future] that completes when the dialog is dismissed.
  static Future<void> _showAlert({
    String? title,
    String? message,
    required SteelAlertType type,
    String? actionText,
  }) async {
    final ctx = Steel.context;
    if (ctx == null) return;
    await showAdaptiveDialog(
      context: ctx,
      builder: (context) {
        return SteelAlertWidget(
          title: title,
          content: message,
          actionText: actionText,
          type: type,
        );
      },
    );
  }

  /// Displays an error alert with an optional title and message.
  ///
  /// The [title] parameter is an optional string that represents the title of the alert.
  /// The [message] parameter is an optional string that represents the message of the alert.
  ///
  /// Returns:
  ///   A [Future] that completes when the error alert is shown.
  static Future<void> error(
      {String? title, String? message, String? actionText}) async {
    await _showAlert(
        title: title,
        message: message,
        type: SteelAlertType.error,
        actionText: actionText);
  }

  /// Displays an informational alert with an optional title and message.
  ///
  /// The [title] parameter is an optional string that represents the title of the alert.
  /// The [message] parameter is an optional string that represents the message of the alert.
  ///
  /// Returns:
  ///   A [Future] that completes when the informational alert is shown.
  static Future<void> info(
      {String? title, String? message, String? actionText}) async {
    await _showAlert(
      title: title,
      message: message,
      type: SteelAlertType.info,
      actionText: actionText,
    );
  }

  /// Displays a success alert with an optional title and message.
  ///
  /// The [title] parameter is an optional string that represents the title of the alert.
  /// The [message] parameter is an optional string that represents the message of the alert.
  ///
  /// Returns:
  ///   A [Future] that completes when the success alert is shown.
  static Future<void> success(
      {String? title, String? message, String? actionText}) async {
    await _showAlert(
      title: title,
      message: message,
      type: SteelAlertType.success,
      actionText: actionText,
    );
  }

  /// Displays a warning alert with an optional title and message.
  ///
  /// The [title] parameter is an optional string that represents the title of the alert.
  /// The [message] parameter is an optional string that represents the message of the alert.
  ///
  /// Returns:
  ///   A [Future] that completes when the warning alert is shown.
  static Future<void> warning(
      {String? title, String? message, String? actionText}) async {
    await _showAlert(
      title: title,
      message: message,
      type: SteelAlertType.warning,
      actionText: actionText,
    );
  }
}
