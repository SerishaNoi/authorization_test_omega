import 'package:authorization_test_omega/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class SeparatorWithText extends StatelessWidget {
  final String? title;

  const SeparatorWithText({
    super.key,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: AppColors.textP,
          ),
        ),
        title!.isEmpty
            ? const SizedBox()
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  title ?? '',
                  style: const TextStyle(
                    color: AppColors.textP,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.3,
                  ),
                ),
              ),
        const Expanded(
          child: Divider(
            color: AppColors.textP,
          ),
        ),
      ],
    );
  }
}
