import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
        value: false,
        onChanged: (bool newValue) {},
      ),
      title: Text('Map'),
    );
  }
}
