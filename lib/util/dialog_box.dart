import 'package:flutter/material.dart';
import 'package:notes_app1/util/button.dart';
import 'package:notes_app1/util/todo_tile.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context){
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //User input
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder(),
              hintText: "Add a new task"),
            ),
            //Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //Save button
                MyButton(text: "Save", onPressed: onSave),
                const SizedBox(width: 4,),
                //Cancel button
                MyButton(text: "Cancel", onPressed: onCancel)

              ],
            )


          ],

        ),
      ),
    );
  }
}