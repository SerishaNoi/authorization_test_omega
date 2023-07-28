import 'package:authorization_test_omega/core/methods/show_snack_bar.dart';
import 'package:authorization_test_omega/core/styles/app_colors.dart';
import 'package:authorization_test_omega/features/ui/widgets/footer_title.dart';
import 'package:authorization_test_omega/features/ui/widgets/link_button.dart';
import 'package:flutter/material.dart';

class ForBusinesButtons extends StatelessWidget {
  const ForBusinesButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const FooterTitle(
          title: 'Бизнесу',
        ),
        const SizedBox(
          height: 15,
        ),
        LinkButton(
          textSize: 16,
          title: 'Контакты',
          isNeedToUnderline: false,
          buttonColor: AppColors.bgCard,
          onTap: () {
            showCustomSnackBar(context: context, content: 'Контакты');
          },
        ),
        const SizedBox(
          height: 10,
        ),
        LinkButton(
          textSize: 16,
          title: 'Новости',
          isNeedToUnderline: false,
          buttonColor: AppColors.bgCard,
          onTap: () {
            showCustomSnackBar(context: context, content: 'Новости');
          },
        ),
        const SizedBox(
          height: 10,
        ),
        LinkButton(
          textSize: 16,
          title: 'Справка',
          isNeedToUnderline: false,
          buttonColor: AppColors.bgCard,
          onTap: () {
            showCustomSnackBar(context: context, content: 'Справка');
          },
        ),
      ],
    );
  }
}
