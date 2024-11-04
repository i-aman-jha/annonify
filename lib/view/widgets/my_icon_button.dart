import 'package:annonify/config/Theme/colors.dart';
import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const MyIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
            color: ThemeColors.accentColor,
            borderRadius: BorderRadius.circular(16)),
        child: Icon(
          icon,
          color: ThemeColors.textHeading,
        ),
      ),
    );
  }
}
