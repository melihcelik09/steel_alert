import 'package:flutter/material.dart';
import 'package:steel_alert/src/alerts/steel_alert.dart';
import 'package:steel_alert/src/constants/steel_alert_type.dart';
import 'package:steel_alert/src/constants/steel_colors.dart';
import 'package:steel_alert/src/extensions/theme_extension.dart';

class SteelAlertWidget extends StatelessWidget {
  final SteelAlertType type;
  final String? title;
  final String? content;
  final String? actionText;

  const SteelAlertWidget({
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
            Steel.navigationKey.currentState!.pop();
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
