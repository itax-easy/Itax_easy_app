import 'package:flutter/material.dart';

class SelectYearDropdown extends StatefulWidget {
  final String initialValue;

  final ValueChanged<String> onChanged;

  const SelectYearDropdown({
    Key? key,
    required this.initialValue,

    required this.onChanged,
  }) : super(key: key);

  @override
  State<SelectYearDropdown> createState() => _SelectYearDropdownState();
}

class _SelectYearDropdownState extends State<SelectYearDropdown> {
  List<String> years = [
    '2025-26',
    '2024-25',
    '2023-24',
    '2022-23',
    '2021-22',
    '2020-21',
    '2019-20',
    '2018-19',
    '2017-18',
  ];
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
                  years.map((year) {
                    return Container(
                      color:
                          year == selectedValue
                              ? Colors
                                  .blue // Highlight color for the selected item
                              : Colors.transparent, // Default background color
                      child: ListTile(
                        title: Text(
                          year,
                          style: TextStyle(
                            fontSize: 14,
                            color:
                                year == selectedValue
                                    ? Colors
                                        .white // Text color for the selected item
                                    : Colors
                                        .black, // Text color for unselected items
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedValue = year;
                            dropdownOpened = false;
                          });
                          widget.onChanged(year);
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
