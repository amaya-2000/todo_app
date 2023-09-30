import 'package:flutter/material.dart';

enum Priority { urgent, normal, low }

class CheckableTodoItem extends StatefulWidget {
  const CheckableTodoItem(this.text, this.priority, {super.key});

  final String text;
  final Priority priority;

  @override
  State<CheckableTodoItem> createState() => _CheckableTodoItemState();
}

class _CheckableTodoItemState extends State<CheckableTodoItem> {
  var _done = false;

  void setDone(bool? isChecked) {
    setState(() {
      _done = isChecked ?? false;
      _updateIcon();
    });
  }

  void _updateIcon() {
    switch (widget.priority) {
      case Priority.urgent:
        break;
      case Priority.normal:
        break;
      case Priority.low:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: _done,
      onChanged: setDone,
      title: Text(widget.text),
    );
  }
}
