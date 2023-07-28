import 'package:authorization_test_omega/features/ui/widgets/image_icon_button.dart';
import 'package:flutter/material.dart';

class ImageIocnsGroup extends StatelessWidget {
  const ImageIocnsGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageIconButton(
          imageName: 'yandex.png',
          onTap: () {
            print('tapped on yandex button');
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ImageIconButton(
            imageName: 'Icon_GoogleColor.png',
            onTap: () {
              print('tapped on google button');
            },
          ),
        ),
        ImageIconButton(
          imageName: 'VK.png',
          onTap: () {
            print('tapped on VK button');
          },
        ),
      ],
    );
  }
}
