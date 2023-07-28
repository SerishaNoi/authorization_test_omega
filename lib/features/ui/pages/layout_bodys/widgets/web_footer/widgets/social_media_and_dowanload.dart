import 'package:authorization_test_omega/core/methods/show_snack_bar.dart';
import 'package:authorization_test_omega/core/styles/app_colors.dart';
import 'package:authorization_test_omega/features/ui/widgets/footer_title.dart';
import 'package:authorization_test_omega/features/ui/widgets/image_icon_button.dart';
import 'package:authorization_test_omega/features/ui/widgets/main_button.dart';
import 'package:flutter/material.dart';

class SocialMediaAndDowanload extends StatelessWidget {
  const SocialMediaAndDowanload({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 295),
          child: MainButton(
            title: 'Скачать приложение',
            titleColor: AppColors.textH,
            titleSize: 16,
            backgroundColor: AppColors.bgCard,
            iconColor: AppColors.textH,
            buttonIcon: Icons.download,
            onPressed: () {
              showCustomSnackBar(context: context, content: 'Скачать приложение');
            },
          ),
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            const FooterTitle(
              title: 'Социальные сети:',
            ),
            ImageIconButton(
              imageName: 'VK_black.png',
              onTap: () {
                showCustomSnackBar(
                    context: context, content: 'VK');
              },
            ),
            const SizedBox(width: 10),
            ImageIconButton(
              imageName: 'telegram_black.png',
              onTap: () {
                showCustomSnackBar(
                    context: context, content: 'Telegram');
              },
            ),
            const SizedBox(width: 10),
            ImageIconButton(
              imageName: 'you_tube_black.png',
              onTap: () {
                showCustomSnackBar(
                    context: context, content: 'YouTube');
              },
            ),
          ],
        )
      ],
    );
  }
}
