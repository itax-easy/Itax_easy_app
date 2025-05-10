import 'package:flutter/material.dart';

class QuarterPeriodDropdown extends StatefulWidget {
  final String initialValue;

  final ValueChanged<String> onChanged;

  const QuarterPeriodDropdown({
    Key? key,
    required this.initialValue,

    required this.onChanged,
  }) : super(key: key);

  @override
  State<QuarterPeriodDropdown> createState() => _QuarterPeriodDropdownState();
}

class _QuarterPeriodDropdownState extends State<QuarterPeriodDropdown> {
  List<String> quarterPeriods = ['Apr-Jun', 'Jul-Sep', 'Oct-Dec', 'Jan-Mar'];
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
            width: 128,
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
            width: 128,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children:
                  quarterPeriods.map((quarterPeriod) {
                    return Container(
                      color:
                          quarterPeriod == selectedValue
                              ? Colors
                                  .blue // Highlight color for the selected item
                              : Colors.transparent, // Default background color
                      child: ListTile(
                        title: Text(
                          quarterPeriod,
                          style: TextStyle(
                            fontSize: 14,
                            color:
                                quarterPeriod == selectedValue
                                    ? Colors
                                        .white // Text color for the selected item
                                    : Colors
                                        .black, // Text color for unselected items
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedValue = quarterPeriod;
                            dropdownOpened = false;
                          });
                          widget.onChanged(quarterPeriod);
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
