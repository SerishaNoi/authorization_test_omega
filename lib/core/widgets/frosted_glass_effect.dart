import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedGlassEffect extends StatelessWidget {
  final Widget child;

  const FrostedGlassEffect({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: child  ,
      ),
    );
  }
}
