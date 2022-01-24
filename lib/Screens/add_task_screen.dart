import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/Models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  late String newTaskTitle;

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                ),
              ),
              TextField(
                autofocus: true,
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              // ignore: deprecated_member_use
              FlatButton(
                height: 50.0,
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                color: Colors.lightBlueAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
