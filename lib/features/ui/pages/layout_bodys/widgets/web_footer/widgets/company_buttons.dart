import 'package:authorization_test_omega/core/methods/show_snack_bar.dart';
import 'package:authorization_test_omega/core/styles/app_colors.dart';
import 'package:authorization_test_omega/features/ui/widgets/footer_title.dart';
import 'package:authorization_test_omega/features/ui/widgets/link_button.dart';
import 'package:flutter/material.dart';

class CompanyButtons extends StatelessWidget {
  const CompanyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const FooterTitle(
          title: 'Компания',
        ),
        const SizedBox(
          height: 15,
        ),
        LinkButton(
          textSize: 16,
          title: 'Omega Studio',
          isNeedToUnderline: false,
          buttonColor: AppColors.bgCard,
          onTap: () => showCustomSnackBar(context: context, content: 'Omega Studio'),
        ),
        const SizedBox(
          height: 10,
        ),
        LinkButton(
          textSize: 16,
          title: 'Работа в Omega Studio',
          isNeedToUnderline: false,
          buttonColor: AppColors.bgCard,
          onTap: () => showCustomSnackBar(context: context, content: 'Работа в Omega Studio'),
        ),
      ],
    );
  }
}
