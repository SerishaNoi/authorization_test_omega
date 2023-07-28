import 'package:authorization_test_omega/core/methods/show_snack_bar.dart';
import 'package:authorization_test_omega/core/styles/app_colors.dart';
import 'package:authorization_test_omega/features/ui/widgets/footer_title.dart';
import 'package:authorization_test_omega/features/ui/widgets/link_button.dart';
import 'package:flutter/material.dart';

class ForUsersButtons extends StatelessWidget {
  const ForUsersButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const FooterTitle(
          title: 'Пользователям',
        ),
        const SizedBox(
          height: 15,
        ),
        LinkButton(
          textSize: 16,
          title: 'Пользовательское соглашение',
          isNeedToUnderline: false,
          buttonColor: AppColors.bgCard,
          onTap: () {
            showCustomSnackBar(context: context, content: 'Пользовательское соглашение');
          },
        ),
        const SizedBox(
          height: 10,
        ),
        LinkButton(
          textSize: 16,
          title: 'Политика конфиденциальности',
          isNeedToUnderline: false,
          buttonColor: AppColors.bgCard,
          onTap: () {
            showCustomSnackBar(context: context, content: 'Политика конфиденциальности');
          },
        ),
        const SizedBox(
          height: 10,
        ),
        LinkButton(
          textSize: 16,
          title: 'Политика использования файлов cookie',
          isNeedToUnderline: false,
          buttonColor: AppColors.bgCard,
          onTap: () {
            showCustomSnackBar(context: context, content: 'Политика использования файлов cookie');
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
