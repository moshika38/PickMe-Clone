import 'package:flutter/material.dart';
import 'package:pick_me_clone/utils/colors.dart';
import 'package:pick_me_clone/utils/font_Style.dart';

class AppButton extends StatelessWidget {
  final String? buttonText;
  final double? buttonWidth;
  final VoidCallback? onPress;

  const AppButton({
    super.key,
    this.buttonText,
    this.buttonWidth,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: buttonWidth ?? 200,
        height: 60,
        decoration: BoxDecoration(
          color: AppColors.secondaryYellow,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Text(
            buttonText ?? "Get Started",
            style: AppFontStyle.buttonText,
          ),
        ),
      ),
    );
  }
}
