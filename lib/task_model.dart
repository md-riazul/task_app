import 'package:flutter/material.dart';

class TaskModel {
  String? title;
  IconData? icon;

  TaskModel({this.icon, this.title});
}

List<TaskModel> taskList = [
  TaskModel(icon: Icons.check_circle, title: 'Research pattern flow'),
  TaskModel(
      icon: Icons.circle_outlined, title: 'Create some option for User flow'),
  TaskModel(icon: Icons.circle_outlined, title: 'Create Rapid Prototype'),
];
