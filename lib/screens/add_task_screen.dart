import 'package:flutter/material.dart';
import 'package:todoey/constant.dart';

class AddTask extends StatefulWidget {
  final Function(String textinput)? textCallBack;

  // ignore: use_key_in_widget_constructors
  const AddTask(this.textCallBack);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController textEditingController = TextEditingController();
  String? inputedTask;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        color: const Color(0xff757575),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          decoration: kContainerRadiusDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                autofocus: true,
                decoration: kTextFieldDecoration,
                style: const TextStyle(fontSize: 20),
                controller: textEditingController,
                onChanged: (taskValue) {
                  inputedTask = taskValue;
                },
              ),
              const SizedBox(height: 20),
              MaterialButton(
                onPressed: () {
                  widget.textCallBack!(inputedTask!);
                  textEditingController.clear();
                  Navigator.pop(context);
                },
                color: Colors.lightBlueAccent,
                height: 45,
                child: const Center(
                    child: Text('Add',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
