import 'package:authorization_test_omega/core/methods/show_snack_bar.dart';
import 'package:authorization_test_omega/features/ui/widgets/tap_bar_button.dart';
import 'package:flutter/material.dart';

final List<String> tabsListTitles = [
  'Игры',
  'Приложения',
  'Сообщество',
  'Турнир',
  'Справка',
];

class LogoWithTapBar extends StatefulWidget {
  const LogoWithTapBar({super.key});

  @override
  State<LogoWithTapBar> createState() => _LogoWithTapBarState();
}

class _LogoWithTapBarState extends State<LogoWithTapBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/Logo.png',
        ),
        const SizedBox(
          width: 30,
        ),
        SizedBox(
          height: 100,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return TapBarButton(
                title: tabsListTitles[index],
                isSelected: selectedIndex == index ? true : false,
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                  showCustomSnackBar(context: context, content: '${tabsListTitles[index]}');
                },
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 25,
              );
            },
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: tabsListTitles.length,
          ),
        ),
      ],
    );
  }
}
