import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/color_styles.dart';

class SexualPersonalityButton extends StatefulWidget {
  final String label;
  final Function addMode;
  final Function removeMode;

  const SexualPersonalityButton(
      {super.key,
      required this.label,
      required this.addMode,
      required this.removeMode});

  @override
  State<SexualPersonalityButton> createState() =>
      _SexualPersonalityButtonState();
}

class _SexualPersonalityButtonState extends State<SexualPersonalityButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          !isSelected
              ? widget.addMode(widget.label)
              : widget.removeMode(widget.label);

          isSelected = !isSelected;
        });
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 12.5, 16, 12.5),
        decoration: BoxDecoration(
            color: isSelected ? null : CustomColorStyles.secondaryColor,
            boxShadow: isSelected
                ? [
                    const BoxShadow(color: Color.fromRGBO(255, 255, 255, .7)),
                    BoxShadow(
                        blurStyle: BlurStyle.inner,
                        blurRadius: 12,
                        color: CustomColorStyles.primaryColor)
                  ]
                : null,
            border: isSelected
                ? null
                : Border.all(color: const Color.fromRGBO(0, 0, 0, .04)),
            borderRadius: BorderRadius.circular(14)),
        child: Text(
          textAlign: TextAlign.center,
          widget.label,
          style: TextStyle(
              height: 14 / 12,
              fontFamily: "Ambit",
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
              color: isSelected
                  ? Colors.white
                  : const Color.fromRGBO(96, 100, 139, 1)),
        ),
      ),
    );
  }
}
