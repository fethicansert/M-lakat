import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/styles/color_styles.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({
    super.key,
    required this.type,
    required this.list,
    required this.setSelected,
  });

  final String type;

  final List<Map<String, String>> list;
  final Function setSelected;

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  Map<String, String>? value;

  @override
  void initState() {
    value = widget.list[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: CustomColorStyles.secondaryColor,
          border: Border.all(color: const Color.fromRGBO(0, 0, 0, .05))),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: value,
          itemHeight: 54,
          borderRadius: BorderRadius.circular(10),
          menuMaxHeight: 300,
          dropdownColor: const Color.fromRGBO(231, 28, 113, .5),
          isExpanded: true,
          icon: const Icon(
            CupertinoIcons.chevron_down,
            size: 15,
          ),
          items: widget.list.map((Map<String, String> item) {
            return DropdownMenuItem(
                value: item,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: CustomColorStyles.secondaryColor),
                  height: 54,
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 35,
                        width: 35,
                        child: CircleAvatar(
                          backgroundColor: CustomColorStyles.secondaryColor,
                          backgroundImage: AssetImage(item['image']!),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Text(
                            item['label']!,
                            style: const TextStyle(
                                fontFamily: 'Ambit',
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ))
                    ],
                  ),
                ));
          }).toList(),
          onChanged: (Map<String, String>? selectedValue) {
            widget.setSelected(selectedValue, widget.type);
            setState(() {
              value = selectedValue;
            });
          },
        ),
      ),
    );
  }
}
