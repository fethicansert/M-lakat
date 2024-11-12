// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_sexual_personality_button.dart';

class SexualPersonalityModes extends StatefulWidget {
  final List<String> sexualPersonalityModes;

  const SexualPersonalityModes(
      {super.key, required this.sexualPersonalityModes});

  @override
  State<SexualPersonalityModes> createState() => _SexualPersonalityModesState();
}

class _SexualPersonalityModesState extends State<SexualPersonalityModes> {
  List<String> selectedSexualPersonalities = [];
  void addMode(String mode) {
    print('$mode added to sexual personaty list');
    selectedSexualPersonalities.add(mode);
  }

  void removeMode(String mode) {
    print('$mode removed to sexual personaty list');
    selectedSexualPersonalities.remove(mode);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        runSpacing: 10,
        spacing: 8,
        children: widget.sexualPersonalityModes
            .map((label) => SexualPersonalityButton(
                label: label, addMode: addMode, removeMode: removeMode))
            .toList(),
      ),
    );
  }
}
