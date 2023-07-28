import 'package:flutter/material.dart';

Widget bacgroundToMobileDevice(BuildContext context) {
  return Positioned.fill(
    left: -200, // сделать дитнамический ресайз
    child: Image.asset(
      'assets/images/background_image.png',
      fit: BoxFit.fitHeight,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    ),
  );
}
