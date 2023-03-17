import 'package:app_itc_site/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, this.widget});

  final void Function()? onPressed;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: AppColors.red),
      onPressed: onPressed,
      child: widget,
    );
  }
}
