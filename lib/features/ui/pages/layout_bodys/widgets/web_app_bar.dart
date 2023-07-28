import 'package:authorization_test_omega/core/methods/show_snack_bar.dart';
import 'package:authorization_test_omega/features/ui/pages/layout_bodys/widgets/link_buttons_group.dart';
import 'package:authorization_test_omega/features/ui/pages/layout_bodys/widgets/logo_with_tap_bar.dart';
import 'package:authorization_test_omega/features/ui/widgets/custom_serch_bar.dart';
import 'package:authorization_test_omega/features/ui/widgets/outline_icon_button.dart';
import 'package:flutter/material.dart';

class WebAppBar extends StatefulWidget {
  const WebAppBar({super.key});

  @override
  State<WebAppBar> createState() => _WebAppBarState();
}

class _WebAppBarState extends State<WebAppBar> {
  late final TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: _getCurrentPadding(constraints.maxWidth, context),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: LinkButtonsGroup(
                onTapForBusinesButton: () {
                  showCustomSnackBar(context: context, content: 'Для бизнеса');
                },
                onTapForDeveloperButton: () {
                  showCustomSnackBar(context: context, content: 'Для разработчиков');
                },
                onTapForYouButton: () {
                  showCustomSnackBar(context: context, content: 'Для вас');
                },
              ),
            ),
            constraints.maxWidth < 1140
                ? Column(
                    children: [
                      const LogoWithTapBar(),
                      Row(
                        children: [
                          CustomSerchBar(
                            controller: controller,
                            label: 'Поиск',
                            serchOnChanged: (p0) {},
                          ),
                          const SizedBox(
                            width: 17,
                          ),
                          OutlinedIconButton(
                            onTap: () => showCustomSnackBar(context: context, content: 'Корзина'),
                            title: '',
                            icon: Icons.shopping_cart_outlined,
                          ),
                          OutlinedIconButton(
                            onTap: () => showCustomSnackBar(context: context, content: 'Избранное'),
                            title: '',
                            icon: Icons.favorite_border,
                          ),
                          OutlinedIconButton(
                            onTap: () => showCustomSnackBar(context: context, content: 'Вход'),
                            title: 'Вход',
                            icon: Icons.exit_to_app,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  )
                : Row(
                    children: [
                      const LogoWithTapBar(),
                      constraints.maxWidth < 1215
                          ? const SizedBox(
                              width: 10,
                            )
                          : const SizedBox(
                              width: 68,
                            ),
                      Row(
                        children: [
                          CustomSerchBar(
                            controller: controller,
                            label: 'Поиск',
                            serchOnChanged: (p0) {},
                          ),
                          const SizedBox(
                            width: 17,
                          ),
                          OutlinedIconButton(
                            onTap: () => showCustomSnackBar(context: context, content: 'Корзина'),
                            title: '',
                            icon: Icons.shopping_cart_outlined,
                          ),
                          OutlinedIconButton(
                            onTap: () => showCustomSnackBar(context: context, content: 'Корзина'),
                            title: '',
                            icon: Icons.favorite_border,
                          ),
                          OutlinedIconButton(
                            onTap: () => showCustomSnackBar(context: context, content: 'Корзина'),
                            title: 'Вход',
                            icon: Icons.exit_to_app,
                          ),
                        ],
                      ),
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
    case > 1400:
      return MediaQuery.of(context).size.width * 0.125;
    case < 1400:
      return MediaQuery.of(context).size.width * 0.05;
  }
}
