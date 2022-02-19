import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:todo/store/task_store.dart';
import 'package:todo/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final tasks = context.read<TaskStore>().tasks;
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              title: tasks[index].name,
              isChecked: tasks[index].isDone,
              onChangedCallback: () {
                context.read<TaskStore>().updateStatus(index);
              },
              onLongPressedCallback: () {
                showDialog(
                  context: context,
                  builder: (_) => Platform.isIOS
                      ? _iosAlert(context, index)
                      : _materialAlert(context, index),
                );
              },
            );
          },
          itemCount: tasks.length,
        );
      },
    );
  }

  Widget _iosAlert(BuildContext context, int idx) {
    return CupertinoAlertDialog(
      title: const Text("Confirm to delete"),
      actions: [
        CupertinoDialogAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("No"),
        ),
        CupertinoDialogAction(
          onPressed: () {
            context.read<TaskStore>().remove(idx);
            Navigator.pop(context);
          },
          child: const Text("Yes"),
        ),
      ],
    );
  }

  Widget _materialAlert(BuildContext context, int idx) {
    return AlertDialog(
      title: const Text("Confirm to delete"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("No"),
        ),
        TextButton(
          onPressed: () {
            context.read<TaskStore>().remove(idx);
            Navigator.pop(context);
          },
          child: const Text("Yes"),
        ),
      ],
    );
  }
}
