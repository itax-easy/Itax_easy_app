import 'package:flutter/material.dart';

class SelectStatusdropdown extends StatefulWidget {
  final double? width;
  final double? height;
  final String initialValue;
  final ValueChanged<String> onChanged;

  const SelectStatusdropdown({
    Key? key,
    required this.initialValue,
    this.height,
    this.width,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<SelectStatusdropdown> createState() => _SelectStatusdropdownState();
}

class _SelectStatusdropdownState extends State<SelectStatusdropdown> {
  List<String> status = ['Resident', 'Non Resident', 'Ordinary Resident'];
  late String selectedValue;
  bool dropdownOpened = false;
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialValue;
  }

  void _toggleDropdown() {
    if (dropdownOpened) {
      _closeDropdown();
    } else {
      _openDropdown();
    }
  }

  void _openDropdown() {
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
    setState(() {
      dropdownOpened = true;
    });
  }

  void _closeDropdown() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    setState(() {
      dropdownOpened = false;
    });
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    var offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder:
          (context) => Positioned(
            left: offset.dx,
            top: offset.dy + size.height + 5,
            width: widget.width ?? 327,
            child: CompositedTransformFollower(
              link: _layerLink,
              showWhenUnlinked: false,
              offset: Offset(0, size.height + 5),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  constraints: BoxConstraints(maxHeight: 200),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    children:
                        status.map((item) {
                          bool isSelected = item == selectedValue;
                          return Container(
                            color:
                                isSelected ? Colors.blue : Colors.transparent,
                            child: ListTile(
                              title: Text(
                                item,
                                style: TextStyle(
                                  fontSize: 14,
                                  color:
                                      isSelected ? Colors.white : Colors.black,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  selectedValue = item;
                                });
                                widget.onChanged(item);
                                _closeDropdown();
                              },
                            ),
                          );
                        }).toList(),
                  ),
                ),
              ),
            ),
          ),
    );
  }

  @override
  void dispose() {
    _closeDropdown(); // Ensure overlay is closed when widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(
        onTap: _toggleDropdown,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          width: widget.width ?? 327,
          height: widget.height ?? 44,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black54),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(selectedValue, overflow: TextOverflow.ellipsis),
              ),
              Icon(
                dropdownOpened
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
              ),
            ],
          ),
        ),
      ),
    );
  }
}






 // SelectStatusdropdown