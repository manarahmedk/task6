import 'package:flutter/material.dart';

import '../../model/task_model.dart';
import '../components/task_builder.dart';

class DoneScreen extends StatelessWidget {

  List<TaskModel> tasks=[
    TaskModel(title: 'Go To Gym', date: "24-9-2023", time: "1:30"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(10),
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskBuilder( taskModel: tasks[index],);
      },
      separatorBuilder: (context, index) => SizedBox(
        height: 10,
      ),
    );
  }
}
