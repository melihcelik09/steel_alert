import 'package:flutter/material.dart';
import 'package:steel_alert/src/constants/steel_colors.dart';

enum SteelAlertType {
  warning(icon: Icons.warning, color: SteelColors.warningColor),
  error(icon: Icons.local_fire_department, color: SteelColors.errorColor),
  info(icon: Icons.info, color: SteelColors.infoColor),
  success(icon: Icons.thumb_up, color: SteelColors.successColor);

  final IconData? icon;
  final Color? color;

  const SteelAlertType({this.icon, this.color});
}
