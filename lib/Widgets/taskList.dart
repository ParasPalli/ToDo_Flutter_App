import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Widgets/singleTask.dart';
import 'package:todo_app/models/providerTaskData.dart';

class taskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, value, Widget? child) {
        return ListView.builder(
          itemCount: value.taskCount,
          itemBuilder: (context, index) {
            return GestureDetector(
              onLongPress: () {
                value.deleteTask(index);
              },
              child: singleTask(
                taskTitle: value.tasks[index].name,
                isChecked: value.tasks[index].isChecked,
                checkBoxCallBack: (val) {
                  value.updateCheckBox(value.tasks[index]);
                },
              ),
            );
          },
        );
      },
    );
  }
}
