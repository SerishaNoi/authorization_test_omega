import 'package:authorization_test_omega/core/styles/app_colors.dart';
import 'package:authorization_test_omega/features/ui/widgets/link_button.dart';
import 'package:flutter/material.dart';

class LinkButtonsGroup extends StatelessWidget {
  final Function() onTapForYouButton;
  final Function() onTapForBusinesButton;
  final Function() onTapForDeveloperButton;

  const LinkButtonsGroup({
    super.key,
    required this.onTapForYouButton,
    required this.onTapForBusinesButton,
    required this.onTapForDeveloperButton,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        LinkButton(
          buttonColor: AppColors.link,
          isNeedToUnderline: false,
          onTap: onTapForYouButton,
          textSize: 13,
          title: 'Для вас',
        ),
        const SizedBox(
          width: 20,
        ),
        LinkButton(
          buttonColor: AppColors.link,
          isNeedToUnderline: false,
          onTap: onTapForBusinesButton,
          textSize: 13,
          title: 'Для бизнеса',
        ),
        const SizedBox(
          width: 20,
        ),
        LinkButton(
          buttonColor: AppColors.link,
          isNeedToUnderline: false,
          onTap: onTapForDeveloperButton,
          textSize: 13,
          title: 'Для разработчиков',
        ),
      ],
    );
  }
}
