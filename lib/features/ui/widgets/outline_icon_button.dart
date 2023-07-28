import 'package:authorization_test_omega/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class OutlinedIconButton extends StatefulWidget {
  final Function() onTap;
  final IconData icon;
  final String? title;

  const OutlinedIconButton({
    super.key,
    required this.onTap,
    required this.icon,
    this.title,
  });

  @override
  State<OutlinedIconButton> createState() => _OutlinedIconButtonState();
}

class _OutlinedIconButtonState extends State<OutlinedIconButton> {
  bool hasFocus = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          hasFocus = true;
        });
      },
      onExit: (event) {
        setState(() {
          hasFocus = false;
        });
      },
      child: SizedBox(
        height: 24,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              hoverColor: Colors.transparent,
              padding: EdgeInsets.zero,
              icon: Icon(widget.icon,
                  size: 24, color: hasFocus ? AppColors.mainButton : AppColors.violetHard),
              onPressed: widget.onTap,
            ),
            widget.title!.isNotEmpty
                ? Text(
                    '${widget.title}',
                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
