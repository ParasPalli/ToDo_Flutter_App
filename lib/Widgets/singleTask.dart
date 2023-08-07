import 'package:flutter/material.dart';

class singleTask extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;

  singleTask({
    required this.taskTitle,
    required this.isChecked,
    required this.checkBoxCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: (value) => checkBoxCallBack(value),
      ),
    );
  }
}

//
// (bool value) {
// setState(() {
// isChecked = value;
// });
// }
