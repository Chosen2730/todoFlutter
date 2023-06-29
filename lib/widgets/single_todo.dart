import 'package:flutter/material.dart';
import 'package:todo/models/todo_model.dart';

class SingleTodo extends StatelessWidget {
  const SingleTodo({super.key, required this.todo});

  final Todos todo;
  @override
  Widget build(BuildContext context) {
    return Card(
        color: const Color.fromARGB(175, 255, 255, 255),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Icon(
              CategoryIcons[todo.category],
              color: const Color.fromARGB(95, 1, 68, 131),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(todo.todo)
          ]),
        ));
  }
}
