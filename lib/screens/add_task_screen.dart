import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);
  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lightBlueAccent,
            fontSize: 30),),
            TextField(
              onChanged: (value) => newTaskTitle = value,
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15.0,),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: (){
                addTaskCallback(newTaskTitle);
              },
              child: Text(
                'Add', textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
