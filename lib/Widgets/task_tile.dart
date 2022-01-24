import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.taskTitle,
      this.isChecked,
      required this.checkboxCallback,
      required this.longPressCallback});

  final String taskTitle;
  final bool? isChecked;
  final Function(bool?) checkboxCallback;
  final Function()? longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked == true ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: longPressCallback,
    );
  }
}
