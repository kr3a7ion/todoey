import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const TaskTile(
      {required this.tileTitle,
      required this.checkBoxCallBack,
      required this.checkisDone});
  final String tileTitle;
  final Function() checkBoxCallBack;
  final bool checkisDone;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tileTitle,
        style: TextStyle(
            fontSize: 20,
            decoration: checkisDone ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkisDone,
        onChanged: (newvalue) => checkBoxCallBack(),
      ),
    );
  }
}
