import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/screens/task_screen.dart';
import 'package:todo/store/task_store.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider<TaskStore>(
        create: (_) => TaskStore(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TaskScreen(),
    );
  }
}
