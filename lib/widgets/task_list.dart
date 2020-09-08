import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/models/task_data.dart';
import 'package:to_do/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index){
            final task = taskData.tasks[index];
            return TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkBoxCallBack: (newValue) => taskData.updateTask(task),
              longPressCallback: ()=> taskData.deleteTask(task),
            );
          },
        );
      },
    );
  }
}