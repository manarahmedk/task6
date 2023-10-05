import 'package:flutter/material.dart';
import 'package:flutter_app/view/screens/Archive_screen.dart';
import 'package:flutter_app/view/screens/done_screen.dart';
import 'package:flutter_app/view/screens/tasks_screen.dart';

class TabBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'To Do App',
          ),
          backgroundColor: Colors.black,
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Tasks',
                icon: Icon(Icons.task_sharp,),
              ),
              Tab(
                text: 'Done',
                icon: Icon(Icons.done_outline,),
              ),
              Tab(
                text: 'Archive',
                icon: Icon(Icons.archive_outlined,),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TasksScreen(),
            DoneScreen(),
            ArchiveScreen(),
          ],
        ),
      ),
    );
  }
}
