import 'package:flutter/material.dart';
import 'package:flutter_app/model/task_model.dart';

class TaskBuilder extends StatelessWidget {

  TaskModel taskModel;
  TaskBuilder({required this.taskModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.lightBlue,
          width: 3,
        ),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            taskModel.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          Text(
            taskModel.date,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Text(
            taskModel.time,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
