import 'package:flutter/material.dart';
import 'package:pick_me_clone/utils/colors.dart';
import 'package:pick_me_clone/utils/font_Style.dart';

class AppButton extends StatelessWidget {
  final String? buttonText;
  final double? buttonWidth;
  final double? radius;
  final double? leftSpace;
  final IconData? icon;
  final VoidCallback? onPress;

  const AppButton({
    super.key,
    this.buttonText,
    this.buttonWidth,
    this.onPress,
    this.radius,
    this.icon,
    this.leftSpace,
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
          borderRadius: BorderRadius.circular(radius ?? 100),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: leftSpace??0,),
              Text(
                buttonText ?? "Get Started",
                style: AppStyle.buttonText,
              ),
              icon != null ? Icon(icon) : SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }
}
