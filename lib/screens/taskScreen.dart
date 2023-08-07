import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/providerTaskData.dart';

import '../Widgets/addTaskBottomSheet.dart';
import '../Widgets/taskList.dart';

class taskScreen extends StatefulWidget {
  @override
  State<taskScreen> createState() => _taskScreenState();
}

class _taskScreenState extends State<taskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => addTaskBottomSheet(),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 60,
              left: 30,
              right: 30,
              bottom: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Todo List",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 50,
                      color: Colors.white),
                ),
                Text(
                  "${Provider.of<TaskData>(context).taskCount} Tasks",
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: taskList(),
            ),
          ),
        ],
      ),
    );
  }
}
