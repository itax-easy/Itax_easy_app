import 'package:flutter/material.dart';

class GSTTpyeDropdown extends StatefulWidget {
  final String initialValue;

  final ValueChanged<String> onChanged;

  const GSTTpyeDropdown({
    Key? key,
    required this.initialValue,

    required this.onChanged,
  }) : super(key: key);

  @override
  State<GSTTpyeDropdown> createState() => _GSTTpyeDropdownState();
}

class _GSTTpyeDropdownState extends State<GSTTpyeDropdown> {
  List<String> gstTypes = ['Inclusive GST', 'Exclusive GST'];
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
                  gstTypes.map((gstType) {
                    return Container(
                      color:
                          gstType == selectedValue
                              ? Colors
                                  .blue // Highlight color for the selected item
                              : Colors.transparent, // Default background color
                      child: ListTile(
                        title: Text(
                          gstType,
                          style: TextStyle(
                            fontSize: 14,
                            color:
                                gstType == selectedValue
                                    ? Colors
                                        .white // Text color for the selected item
                                    : Colors
                                        .black, // Text color for unselected items
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedValue = gstType;
                            dropdownOpened = false;
                          });
                          widget.onChanged(gstType);
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
