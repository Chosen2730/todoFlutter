import 'package:flutter/material.dart';
import 'package:todo/models/todo_model.dart';
import 'package:todo/widgets/new_todo.dart';
import 'package:todo/widgets/single_todo.dart';

class TodoList extends StatefulWidget {
  const TodoList({
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _TodoListState();
  }
}

class _TodoListState extends State<TodoList> {
  final List<Todos> allTodos = [
    Todos(todo: "Sleep very well", category: Category.health),
    Todos(todo: "Watch fiim small", category: Category.personal),
    Todos(todo: "Write code small", category: Category.work),
  ];

  @override
  Widget build(BuildContext context) {
    void addNewTodo(Todos newTodo) {
      setState(() {
        allTodos.add(newTodo);
      });
      Navigator.pop(context);
    }

    void openOverlay() {
      showModalBottomSheet(
          context: context,
          builder: (ctx) => NewTodo(
                onAddTodo: addNewTodo,
              ));
    }

    void removeTodo(Todos removedTodo) {
      final removedIndex = allTodos.indexOf(removedTodo);
      setState(() {
        allTodos.remove(removedTodo);
      });

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text("Todo deleted"),
        action: SnackBarAction(
            label: "Undo",
            onPressed: () {
              setState(() {
                allTodos.insert(removedIndex, removedTodo);
              });
            }),
      ));
    }

    return Expanded(
      child: Column(
        children: [
          Text(
            "You have ${allTodos.length} tasks for today",
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: allTodos.length,
              itemBuilder: ((context, index) => Dismissible(
                    onDismissed: (direction) {
                      removeTodo(allTodos[index]);
                    },
                    key: ValueKey(allTodos[index]),
                    child: SingleTodo(todo: allTodos[index]),
                  )),
            ),
          ),
          CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: IconButton(
              onPressed: openOverlay,
              icon: const Icon(Icons.add),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
