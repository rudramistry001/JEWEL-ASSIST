import 'package:flutter/material.dart';

class CustomDropdownButton<T> extends StatefulWidget {
  final List<T> items;
  final T value;
  final ValueChanged<T?> onChanged;
  final String Function(T)? itemToString;

  CustomDropdownButton({
    Key? key,
    required this.items,
    required this.value,
    required this.onChanged,
    this.itemToString,
  }) : super(key: key);

  @override
  _CustomDropdownButtonState<T> createState() =>
      _CustomDropdownButtonState<T>();
}

class _CustomDropdownButtonState<T> extends State<CustomDropdownButton<T>> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
      value: widget.value,
      onChanged: widget.onChanged,
      items: widget.items.map<DropdownMenuItem<T>>((T value) {
        return DropdownMenuItem<T>(
          value: value,
          child: Text(widget.itemToString != null
              ? widget.itemToString!(value)
              : value.toString()),
        );
      }).toList(),
    );
  }
}
