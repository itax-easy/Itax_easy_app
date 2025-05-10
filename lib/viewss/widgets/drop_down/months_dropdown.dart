import 'package:flutter/material.dart';

class MonthsDropdown extends StatefulWidget {
  final String initialValue;

  final ValueChanged<String> onChanged;

  const MonthsDropdown({
    Key? key,
    required this.initialValue,

    required this.onChanged,
  }) : super(key: key);

  @override
  State<MonthsDropdown> createState() => _MonthsDropdownState();
}

class _MonthsDropdownState extends State<MonthsDropdown> {
  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
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
            width: 135,
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
            width: 115,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children:
                  months.map((item) {
                    return Container(
                      color:
                          item == selectedValue
                              ? Colors
                                  .blue // Highlight color for the selected item
                              : Colors.transparent, // Default background color
                      child: ListTile(
                        title: Text(
                          item,
                          style: TextStyle(
                            fontSize: 14,
                            color:
                                item == selectedValue
                                    ? Colors
                                        .white // Text color for the selected item
                                    : Colors
                                        .black, // Text color for unselected items
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedValue = item;
                            dropdownOpened = false;
                          });
                          widget.onChanged(item);
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
