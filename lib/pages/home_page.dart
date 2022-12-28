import 'package:flutter/material.dart';
import 'package:notes_app1/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('TO DO'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          ToDoTile(
            taskName: "New app",
            taskCompleted: true,
            onChanged: (p0){},
          ),
          ToDoTile(
            taskName: "New app",
            taskCompleted: true,
            onChanged: (p0){},
          ),
        ],
      ),
    );
  }
}
