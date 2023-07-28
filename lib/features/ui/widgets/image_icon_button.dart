import 'package:authorization_test_omega/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class ImageIconButton extends StatelessWidget {
  final String imageName;
  final Function() onTap;

  const ImageIconButton({
    super.key,
    required this.imageName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
        // height: 60,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Center(
            child: Image.asset(
              'assets/images/$imageName',
            ),
          ),
        ),
      ),
    );
  }
}
