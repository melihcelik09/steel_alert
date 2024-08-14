import 'package:flutter/material.dart';
import 'package:steel_alert/steel_alert.dart';

class SteelAlertDialog extends StatelessWidget {
  final SteelAlertType type;
  final String? title;
  final String? content;
  final String? actionText;

  const SteelAlertDialog({
    super.key,
    this.title,
    this.content,
    this.actionText,
    this.type = SteelAlertType.info,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: type.icon != null ? Icon(type.icon) : null,
      iconColor: type.color,
      title: title != null
          ? Text(
              title!,
              textAlign: TextAlign.center,
            )
          : null,
      titleTextStyle: context.textTheme.titleMedium?.copyWith(
        color: type.color,
        fontWeight: FontWeight.bold,
      ),
      content: content != null
          ? Text(
              content!,
              textAlign: TextAlign.center,
            )
          : null,
      contentTextStyle: context.textTheme.bodyMedium?.copyWith(
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: SteelColors.bgColor,
      shadowColor: SteelColors.shadowColor,
      actionsAlignment: MainAxisAlignment.center,
      scrollable: true,
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: type.color,
            shadowColor: SteelColors.shadowColor,
          ),
          onPressed: () {
            steelAlert.navigatorKey.currentState!.pop();
          },
          child: Text(
            actionText ?? "OK",
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.theme.colorScheme.onPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}

enum SteelAlertType {
  warning(icon: Icons.warning, color: SteelColors.warningColor),
  error(icon: Icons.local_fire_department, color: SteelColors.errorColor),
  info(icon: Icons.info, color: SteelColors.infoColor),
  success(icon: Icons.thumb_up, color: SteelColors.successColor);

  final IconData? icon;
  final Color? color;

  const SteelAlertType({this.icon, this.color});
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
}

class SteelColors {
  static const bgColor = Color(0xffe6e7ee);
  static const shadowColor = Colors.grey;
  static const warningColor = Colors.orangeAccent;
  static const errorColor = Colors.red;
  static const infoColor = Colors.blue;
  static const successColor = Colors.green;
}
