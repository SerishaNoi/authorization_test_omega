import 'package:authorization_test_omega/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

void showCustomSnackBar({required BuildContext context, required String content}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      width: MediaQuery.of(context).size.width * 0.3,
      content: RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: 'Вы нажали на кнопку: ',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: content,
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.link,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      duration: const Duration(seconds: 1),
      // margin: const EdgeInsets.all(80),
      elevation: 30,
      behavior: SnackBarBehavior.floating,
      backgroundColor: AppColors.purpleHard,
    ),
  );
}
