import 'package:authorization_test_omega/core/styles/app_colors.dart';
import 'package:authorization_test_omega/features/ui/pages/layout_bodys/widgets/web_footer/widgets/company_buttons.dart';
import 'package:authorization_test_omega/features/ui/pages/layout_bodys/widgets/web_footer/widgets/for_business.dart';
import 'package:authorization_test_omega/features/ui/pages/layout_bodys/widgets/web_footer/widgets/for_developers_buttons.dart';
import 'package:authorization_test_omega/features/ui/pages/layout_bodys/widgets/web_footer/widgets/for_users_buttons.dart';
import 'package:authorization_test_omega/features/ui/pages/layout_bodys/widgets/web_footer/widgets/social_media_and_dowanload.dart';
import 'package:authorization_test_omega/features/ui/widgets/separator_with_text.dart';
import 'package:flutter/material.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuerySize = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (context, constraints) => Container(
        padding: EdgeInsets.symmetric(
            horizontal: _getCurrentPadding(constraints.maxWidth, context),
            vertical: mediaQuerySize.height * 0.1),
        decoration: const BoxDecoration(color: AppColors.purpleHard),
        child: Column(
          children: [
            constraints.maxWidth < 970
                ? const Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CompanyButtons(),
                              SizedBox(height: 70),
                              ForDevelopersButtons(),
                            ],
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          ForUsersButtons(),
                          SizedBox(
                            width: 70,
                          ),
                          ForBusinesButtons(),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      SocialMediaAndDowanload(),
                    ],
                  )
                : const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CompanyButtons(),
                              SizedBox(height: 70),
                              ForDevelopersButtons(),
                            ],
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          ForUsersButtons(),
                          SizedBox(
                            width: 70,
                          ),
                          ForBusinesButtons(),
                        ],
                      ),
                      SocialMediaAndDowanload(),
                    ],
                  ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 28),
              child: SeparatorWithText(title: ''),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '© 2023 ООО «ОМЕГА СТУДИО»',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.white),
                    ),
                    Text(
                      'ИНН: 3528327105, ОГРН: 1213500003122162608,',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.white),
                    ),
                    Text(
                      'Вологодская область, г. Череповец, ул Белинского, д. 1/3',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.white),
                    ),
                  ],
                ),
                Image(
                  image: AssetImage(
                    'assets/images/footer_logo_fasie.png',
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

_getCurrentPadding(double size, BuildContext context) {
  switch (size) {
    case > 1100:
      return MediaQuery.of(context).size.width * 0.1;
    case < 1100:
      return MediaQuery.of(context).size.width * 0.05;
    case < 1000:
      return 0;
  }
}
