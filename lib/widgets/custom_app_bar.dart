// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key, required this.title, this.showBackButton, this.color});

  final String title;
  final bool? showBackButton;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: SizedBox(
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
                  child: InkWell(
                      onTap: () {
                        // ignore: avoid_print
                        print("App Bar Back Button Clicked");
                      },
                      child: Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(241, 241, 243, 1),
                              shape: BoxShape.circle),
                          child: Center(
                              child: Icon(
                            Icons.keyboard_arrow_left_outlined,
                            size: 18,
                            color: Color.fromRGBO(0, 0, 0, 0.45),
                          )))))
          ],
        ),
      ),
    ));
  }

  @override
  Size get preferredSize => Size.fromHeight(55);
}
