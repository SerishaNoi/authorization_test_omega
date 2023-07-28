import 'package:authorization_test_omega/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class TapBarButton extends StatefulWidget {
  final bool isSelected;
  final String title;
  final Function() onTap;

  const TapBarButton({
    super.key,
    required this.isSelected,
    required this.title,
    required this.onTap,
  });

  @override
  State<TapBarButton> createState() => _TapBarButtonState();
}

class _TapBarButtonState extends State<TapBarButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: widget.isSelected
                  ? const Border(
                      bottom: BorderSide(width: 2, color: AppColors.mainButton),
                    )
                  : const Border(
                      bottom: BorderSide(width: 2, color: AppColors.white),
                    ),
            ),
            child: Text(
              widget.title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColors.textH,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
