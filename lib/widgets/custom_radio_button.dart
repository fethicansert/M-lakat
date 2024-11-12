import 'package:flutter/material.dart';

import '../styles/color_styles.dart';

class CustomRadioButton extends StatelessWidget {
  final String text;
  final String value;
  final Function selectGender;
  final bool isSelected;
  final String imageName;
  final double imageSize;

  const CustomRadioButton(
      {super.key,
      required this.text,
      required this.value,
      required this.selectGender,
      required this.isSelected,
      required this.imageName,
      required this.imageSize});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        selectGender(value);
      },
      child: SizedBox(
        height: 42.57,
        width: 50,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              child: Image(
                image: AssetImage(
                    "assets/images/genders/${!isSelected ? imageName : "${imageName}_pink"}.png"),
                width: imageSize,
                height: 20,
              ),
            ),
            Positioned(
              bottom: 2,
              child: Text(
                text,
                style: TextStyle(
                    fontFamily: "Ambit",
                    fontSize: 11,
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                    color: isSelected
                        ? CustomColorStyles.primaryColor
                        : const Color.fromRGBO(96, 100, 139, .4)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
