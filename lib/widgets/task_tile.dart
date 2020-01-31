import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function checkboxCallback;
  final Function deleteIntent;
  TaskTile(
      {this.title, this.isChecked, this.checkboxCallback, this.deleteIntent});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteIntent,
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
