import 'package:flutter/material.dart';
import 'package:pick_me_clone/utils/colors.dart';
import 'package:pick_me_clone/utils/font_Style.dart';
import 'package:pick_me_clone/widgets/app_buttons.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/src/onboarding.jpg"),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.65,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 16),
                        SizedBox(
                          height: 60,
                          child: Image.asset("assets/src/logo.jpg"),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          "Joyful mobility for a better life",
                          textAlign: TextAlign.center,
                          style: AppFontStyle.headingLarge,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        AppButton(
                          buttonText: "Get started",
                        ),
                        const SizedBox(height: 22),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Want to earn? ",
                              style: AppFontStyle.smallText,
                            ),
                            GestureDetector(
                              onTap: () {
                                // TODO: Implement driver app download
                              },
                              child: Text(
                                "Download driver app",
                                style: AppFontStyle.smallText.copyWith(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}