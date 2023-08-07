import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/screens/taskScreen.dart';

import 'models/providerTaskData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: taskScreen(),
      ),
    );
  }
}
