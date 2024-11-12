import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/color_styles.dart';

class CustomSwitch extends StatelessWidget {
  final bool isActive;
  final Function toggle;
  const CustomSwitch({super.key, required this.isActive, required this.toggle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        toggle();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
            border: Border.all(
                color: isActive
                    ? Colors.transparent
                    : const Color.fromRGBO(0, 0, 0, .1)),
            color: isActive
                ? const Color.fromRGBO(200, 208, 226, .3)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(20)),
        width: 42.95,
        height: 23.24,
        child: Align(
          alignment: Alignment.centerLeft,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: EdgeInsets.only(left: isActive ? 18 : 0),
            decoration: BoxDecoration(
              boxShadow: [
                const BoxShadow(color: Color.fromRGBO(255, 255, 255, .7)),
                BoxShadow(
                    blurStyle: BlurStyle.inner,
                    blurRadius: 5,
                    color: CustomColorStyles.primaryColor)
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            width: 18.06,
            height: 18.06,
          ),
        ),
      ),
    );
  }
}
