import 'package:flutter/material.dart';
import 'package:authorization_test_omega/core/styles/app_colors.dart';

class CustomSerchBar extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final Function(String) serchOnChanged;

  const CustomSerchBar({
    super.key,
    required this.controller,
    required this.label,
    required this.serchOnChanged,
  });

  @override
  State<CustomSerchBar> createState() => _CustomSerchBarState();
}

class _CustomSerchBarState extends State<CustomSerchBar> {
  bool hasFocus = false;
  bool onTextFieldSelected = false;

  @override
  Widget build(BuildContext context) {
    // Сделать эрор бордер
    return SizedBox(
      width: 318,
      height: 40,
      child: MouseRegion(
        opaque: false,
        onEnter: (focus) {
          setState(() {
            hasFocus = true;
          });
        },
        onExit: (event) {
          setState(() {
            hasFocus = false;
          });
        },
        child: TextFormField(
          onChanged: widget.serchOnChanged,
          onTap: () {
            setState(() {
              onTextFieldSelected = true;
            });
          },
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 20, left: 10),
              child: Icon(Icons.search,
                  color: hasFocus ? AppColors.violetHard : AppColors.violetLight),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: hasFocus ? AppColors.violetHard : AppColors.violetLight,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            floatingLabelStyle: TextStyle(
              color: onTextFieldSelected ? AppColors.violetLight : AppColors.textP,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: ' ${widget.label} ',
            labelStyle: TextStyle(
              color: hasFocus ? AppColors.textP : AppColors.violetLight,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.violetHard, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.bgCard, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          cursorHeight: 16,
          cursorColor: AppColors.textP,
          style: const TextStyle(color: AppColors.textP),
        ),
      ),
    );
  }
}
