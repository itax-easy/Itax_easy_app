import 'package:flutter/material.dart';

class SelectTimeDropdown extends StatefulWidget {
  final String initialValue;

  final ValueChanged<String> onChanged;

  const SelectTimeDropdown({
    Key? key,
    required this.initialValue,

    required this.onChanged,
  }) : super(key: key);

  @override
  State<SelectTimeDropdown> createState() => _SelectTimeDropdownState();
}

class _SelectTimeDropdownState extends State<SelectTimeDropdown> {
  List<String> timePeriods = ['Monthly', 'Yearly', 'Quarterly'];
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
            height: 54,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black54),
              borderRadius: BorderRadius.circular(10),
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
                  timePeriods.map((timePeriod) {
                    return Container(
                      color:
                          timePeriod == selectedValue
                              ? Colors
                                  .blue // Highlight color for the selected item
                              : Colors.transparent, // Default background color
                      child: ListTile(
                        title: Text(
                          timePeriod,
                          style: TextStyle(
                            fontSize: 14,
                            color:
                                timePeriod == selectedValue
                                    ? Colors
                                        .white // Text color for the selected item
                                    : Colors
                                        .black, // Text color for unselected items
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedValue = timePeriod;
                            dropdownOpened = false;
                          });
                          widget.onChanged(timePeriod);
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
