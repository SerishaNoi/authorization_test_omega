import 'package:authorization_test_omega/core/constants/app_keys.dart';
import 'package:authorization_test_omega/core/methods/show_snack_bar.dart';
import 'package:authorization_test_omega/core/styles/app_colors.dart';
import 'package:authorization_test_omega/core/widgets/frosted_glass_effect.dart';
import 'package:authorization_test_omega/features/ui/widgets/image_icons_group.dart';
import 'package:authorization_test_omega/features/ui/widgets/link_button.dart';
import 'package:authorization_test_omega/features/ui/widgets/main_button.dart';
import 'package:authorization_test_omega/features/ui/widgets/separator_with_text.dart';
import 'package:authorization_test_omega/features/ui/widgets/styled_text_field.dart';
import 'package:flutter/material.dart';

class WideLayoutBody extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final Function() onPressed;

  const WideLayoutBody({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: AppKeys.authorizationStateKey,
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          'assets/images/background_image.png',
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              constraints: const BoxConstraints(minWidth: 380),
              width: MediaQuery.of(context).size.width * 0.35,
              child: FrostedGlassEffect(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.white.withOpacity(0.75),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Вход',
                          style: TextStyle(
                            color: AppColors.textH,
                            fontSize: 39,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Введите данные, чтобы войти в личный кабинет.',
                          style: TextStyle(
                            color: AppColors.textH,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 20),
                        StyledTextField(
                          isNeedToHideText: false,
                          controller: emailController,
                          label: ' E-mail ',
                        ),
                        const SizedBox(height: 12),
                        StyledTextField(
                          isNeedToHideText: true,
                          controller: passwordController,
                          label: ' Пароль ',
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20, top: 12),
                              child: LinkButton(
                                title: 'Забыли пароль?',
                                textSize: 12,
                                isNeedToUnderline: true,
                                buttonColor: AppColors.link,
                                onTap: () {
                                  print('Tap forgot password button');
                                },
                              ),
                            ),
                          ],
                        ),
                        MainButton(
                          title: 'Войти',
                          titleSize: 16,
                          titleColor: AppColors.white,
                          // isButtonDisabled: true,
                          onPressed: onPressed,
                        ),
                        const SizedBox(height: 28),
                        const SeparatorWithText(title: 'Или войдите с помощью:'),
                        const SizedBox(height: 20),
                        const ImageIocnsGroup(),
                        const SizedBox(height: 28),
                        // Регистрация если нет аккаунта
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Ещё нет акаунта?',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.3,
                                color: AppColors.textP,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            LinkButton(
                              buttonColor: AppColors.link,
                              onTap: () {
                                showCustomSnackBar(context: context, content: 'Зарегистрируйтесь');
                              },
                              textSize: 15,
                              title: 'Зарегистрируйтесь',
                              isNeedToUnderline: false,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
