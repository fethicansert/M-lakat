import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/color_styles.dart';
import 'custom_notification_option_switch.dart';

class NotificationOption extends StatefulWidget {
  final String imageIcon;
  final String label;
  const NotificationOption(
      {super.key, required this.imageIcon, required this.label});

  @override
  State<NotificationOption> createState() => _NotificationOptionState();
}

class _NotificationOptionState extends State<NotificationOption> {
  bool isActive = false;

  void toggle() {
    // ignore: avoid_print
    print('${widget.label} notification toggled');
    setState(() {
      isActive = !isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      height: 54.37,
      decoration: BoxDecoration(
          color: CustomColorStyles.secondaryColor,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: const Color.fromRGBO(0, 0, 0, .05))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image(
                image: AssetImage(widget.imageIcon),
                width: 18.05,
              ),
              const SizedBox(width: 10),
              Text(
                widget.label,
                style: const TextStyle(
                    color: Color.fromRGBO(62, 63, 76, 1),
                    fontFamily: "Ambit",
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          CustomSwitch(
            isActive: isActive,
            toggle: toggle,
          )
        ],
      ),
    );
  }
}
