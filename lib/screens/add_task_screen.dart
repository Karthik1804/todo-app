import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )),
        child: Padding(
          padding: EdgeInsets.only(top: 30, left: 60, right: 60),
          child: Column(
            children: <Widget>[
              Text(
                'Add Tasks',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                ),
                onChanged: (newValue) {
                  newTaskTitle = newValue;
                },
              ),
              SizedBox(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    addTaskCallback(newTaskTitle);
                    //TODO: Add Task to todolist
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.lightBlueAccent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
