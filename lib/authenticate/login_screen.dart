import 'package:flutter/material.dart';
import 'package:pick_me_clone/utils/colors.dart';
import 'package:pick_me_clone/utils/font_Style.dart';
import 'package:pick_me_clone/widgets/app_buttons.dart';
import 'package:pick_me_clone/widgets/loading_bottom_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.cardBackground,
        title: Text(
          "Your number",
          style: AppStyle.smallBolt,
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.cardBackground,
                elevation: 0,
                side: BorderSide(color: AppColors.secondaryText),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: const Text(
                "English",
                style: AppStyle.smallText,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "We will send you a verification code to this number",
              style: AppStyle.smallText,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 80,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(
                      color: AppColors.secondaryText,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "+94",
                      style: AppStyle.smallBolt,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: AppColors.secondaryText),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: 'Enter number',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            AppButton(
              radius: 5,
              buttonWidth: double.infinity,
              icon: Icons.arrow_forward,
              leftSpace: MediaQuery.of(context).size.width * 0.08,
              onPress: () {
                Navigator.pushNamed(context, '/Verify');
                PostBottomAppBar().showPostBottomAppBar(context);
              },
            ),
            const SizedBox(height: 10),
            Text(
              "This site is protected by reCAPTCHA and Google's Privacy Policy and Terms and Conditions",
              style: AppStyle.smallText.copyWith(fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
