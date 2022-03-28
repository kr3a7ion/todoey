import 'package:flutter/material.dart';
import 'package:todoey/model/task_modal.dart';
import 'package:todoey/widgets/tasktile.dart';

class TaskList extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const TaskList({this.tasks});

  final List<Task>? tasks;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 30),
      itemCount: widget.tasks!.length,
      itemBuilder: (context, index) {
        return TaskTile(
          tileTitle: widget.tasks![index].name!,
          checkBoxCallBack: () {
            setState(() {
              widget.tasks![index].toogleDone();
            });
          },
          checkisDone: widget.tasks![index].isDone,
        );
      },
    );
  }
}
