import 'package:flutter/material.dart';
import 'package:todo/models/todo_model.dart';
import 'package:todo/widgets/single_todo.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key, required this.allTodos});
  final List<Todos> allTodos;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: allTodos.length,
        itemBuilder: ((context, index) => Dismissible(
              key: ValueKey(allTodos[index]),
              child: SingleTodo(todo: allTodos[index]),
            )),
      ),
    );
  }
}
