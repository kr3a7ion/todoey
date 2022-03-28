import 'package:flutter/material.dart';

const kContainerRadiusDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30),
      topRight: Radius.circular(30),
    ));

const kTextFieldDecoration = InputDecoration(
    hintText: 'Add Task',
    hintStyle:
        TextStyle(color: Color.fromARGB(255, 207, 207, 207), fontSize: 20),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
            color: Colors.lightBlueAccent,
            width: 5.0,
            style: BorderStyle.solid)));

