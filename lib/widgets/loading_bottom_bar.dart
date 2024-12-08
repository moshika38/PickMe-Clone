import 'package:flutter/material.dart';
import 'package:pick_me_clone/utils/colors.dart';
import 'package:pick_me_clone/utils/font_Style.dart';

class PostBottomAppBar {
  void showPostBottomAppBar(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).colorScheme.primary,
      builder: (BuildContext context) {
        return Container(
          height: 100,
          color: AppColors.white,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LinearProgressIndicator(),
              SizedBox(height: 10),
              Text(
                "Please wait",
                style: AppStyle.bodyText,
              ),
              Text(
                "Loading ...",
                style: AppStyle.smallText,
              )
            ],
          ),
        );
      },
    );
  }
}
