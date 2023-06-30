import 'package:flutter/material.dart';
import 'package:todo/models/todo_model.dart';

class NewTodo extends StatefulWidget {
  const NewTodo({super.key, required this.onAddTodo});

  final Function(Todos) onAddTodo;
  @override
  State<StatefulWidget> createState() {
    return _NewTodoState();
  }
}

class _NewTodoState extends State<NewTodo> {
  Category _selectedCategory = Category.personal;
  final todoController = TextEditingController();

  @override
  void dispose() {
    todoController.dispose();
    super.dispose();
  }

  void saveTodo() {
    if (todoController.text.isNotEmpty) {
      final newTodo =
          Todos(todo: todoController.text, category: _selectedCategory);
      widget.onAddTodo(newTodo);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            autocorrect: true,
            keyboardType: TextInputType.text,
            maxLength: 50,
            controller: todoController,
            decoration: const InputDecoration(label: Text("New Todo")),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              DropdownButton(
                value: _selectedCategory,
                items: Category.values
                    .map((cat) => DropdownMenuItem(
                        value: cat, child: Text(cat.name.toUpperCase())))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedCategory = val as Category;
                  });
                },
              ),
              const Spacer(),
              ElevatedButton(
                  onPressed: saveTodo,
                  child: const Text(
                    "Save Todo",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
