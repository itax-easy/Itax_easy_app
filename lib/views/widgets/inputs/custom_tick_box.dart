import 'package:flutter/material.dart';

class CustomTickBox extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool> onChanged;

  const CustomTickBox({
    Key? key,
    required this.initialValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<CustomTickBox> createState() => _CustomTickBoxState();
}

class _CustomTickBoxState extends State<CustomTickBox> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
        widget.onChanged(isChecked);
      },
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: isChecked ? Colors.blue : Colors.transparent,
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(4),
        ),
        child:
            isChecked ? Icon(Icons.check, color: Colors.white, size: 18) : null,
      ),
    );
  }
}
