import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_radio_button.dart';
import '../styles/color_styles.dart';

class GenderRadioButtons extends StatefulWidget {
  const GenderRadioButtons({super.key});

  @override
  State<GenderRadioButtons> createState() => _GenderRadioState();
}

class _GenderRadioState extends State<GenderRadioButtons> {
  String selectedGender = 'female';

  void selectGender(String value) {
    // ignore: avoid_print
    print("Selected gender $value");
    setState(() {
      selectedGender = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73.17,
      decoration: BoxDecoration(
          color: CustomColorStyles.secondaryColor,
          border: Border.all(color: const Color.fromRGBO(0, 0, 0, .05)),
          borderRadius: BorderRadius.circular(18)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomRadioButton(
              text: "Kadın",
              value: "female",
              selectGender: selectGender,
              isSelected: "female" == selectedGender,
              imageName: "female",
              imageSize: 12.61),
          myDivider(),
          CustomRadioButton(
              text: "Erkek",
              value: "male",
              selectGender: selectGender,
              isSelected: "male" == selectedGender,
              imageName: "male",
              imageSize: 20),
          myDivider(),
          CustomRadioButton(
              text: "Trans",
              value: "trans",
              selectGender: selectGender,
              isSelected: "trans" == selectedGender,
              imageName: "trans",
              imageSize: 20),
          myDivider(),
          CustomRadioButton(
              text: "Gay",
              value: "gay",
              selectGender: selectGender,
              isSelected: "gay" == selectedGender,
              imageName: "gay",
              imageSize: 23.01),
        ],
      ),
    );
  }

  Widget myDivider() {
    return const SizedBox(
      width: 1,
      child: VerticalDivider(
        color: Color.fromRGBO(0, 0, 0, .2),
        thickness: .4,
        indent: (73.17 - 29.84) / 2,
        endIndent: (73.17 - 29.84) / 2,
      ),
    );
  }
}
