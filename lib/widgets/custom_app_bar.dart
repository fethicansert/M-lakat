// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/color_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key, required this.title, this.showBackButton, this.color});

  final String title;
  final bool? showBackButton;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: EdgeInsets.only(top: 10),
      color: color ?? Colors.transparent,
      height: preferredSize.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                height: 17.25 / 15,
                fontFamily: "Ambit"),
          ),
          if (showBackButton != null)
            Positioned(
                left: 0,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColorStyles.secondaryColor,
                    elevation: 0,
                    fixedSize: Size(32, 32),
                    shape: CircleBorder(),
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 15,
                    color: Colors.black54,
                  ),
                ))
        ],
      ),
    ));
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
