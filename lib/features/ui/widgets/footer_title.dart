import 'package:authorization_test_omega/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class FooterTitle extends StatelessWidget {
  final String title;

  const FooterTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 125),
      child: Text(
        title,
        style: const TextStyle(
          color: AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
