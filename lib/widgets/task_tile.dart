import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function onChangedCallback;
  final Function onLongPressedCallback;

  const TaskTile(
      {Key? key,
      required this.title,
      required this.isChecked,
      required this.onChangedCallback,
      required this.onLongPressedCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (newVal) {
          onChangedCallback();
        },
      ),
      onLongPress: () {
        onLongPressedCallback();
      },
    );
  }
}
