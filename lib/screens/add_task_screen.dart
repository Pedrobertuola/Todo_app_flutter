import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          Container(
            color: Colors.lightBlueAccent,
            child: TextButton(
              onPressed: () {
        
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
