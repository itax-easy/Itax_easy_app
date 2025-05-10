import 'package:flutter/material.dart';

class YesOrNoOptionDropdown extends StatefulWidget {
  final String initialValue;

  final ValueChanged<String> onChanged;

  const YesOrNoOptionDropdown({
    Key? key,
    required this.initialValue,

    required this.onChanged,
  }) : super(key: key);

  @override
  State<YesOrNoOptionDropdown> createState() => _YesOrNoOptionDropdownState();
}

class _YesOrNoOptionDropdownState extends State<YesOrNoOptionDropdown> {
  List<String> Options = ['Yes', 'No'];
  late String selectedValue;
  bool dropdownOpened = false;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              dropdownOpened = !dropdownOpened;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            width: 327,
            height: 44,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(selectedValue),
                Spacer(),
                Icon(
                  dropdownOpened
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                ),
              ],
            ),
          ),
        ),
        if (dropdownOpened)
          Container(
            width: 327,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children:
                  Options.map((option) {
                    return Container(
                      color:
                          option == selectedValue
                              ? Colors
                                  .blue // Highlight color for the selected item
                              : Colors.transparent, // Default background color
                      child: ListTile(
                        title: Text(
                          option,
                          style: TextStyle(
                            fontSize: 14,
                            color:
                                option == selectedValue
                                    ? Colors
                                        .white // Text color for the selected item
                                    : Colors
                                        .black, // Text color for unselected items
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedValue = option;
                            dropdownOpened = false;
                          });
                          widget.onChanged(option);
                        },
                      ),
                    );
                  }).toList(),
            ),
          ),
      ],
    );
  }
}
