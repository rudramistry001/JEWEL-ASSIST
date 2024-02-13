import 'package:flutter/material.dart';

class CustomDropdownButton<T> extends StatefulWidget {
  final List<T> items;
  final T? value;
  final ValueChanged<T?> onChanged;
  final String Function(T?)? itemToString;

  const CustomDropdownButton({
    super.key,
    required this.items,
    required this.value,
    required this.onChanged,
    this.itemToString,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomDropdownButtonState<T> createState() =>
      _CustomDropdownButtonState<T>();
}

class _CustomDropdownButtonState<T> extends State<CustomDropdownButton<T>> {
  late T? _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
      value: _selectedItem,
      items: widget.items.map((item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(widget.itemToString?.call(item) ?? item.toString()),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          _selectedItem = newValue;
        });
        widget.onChanged(newValue);
      },
    );
  }
}
