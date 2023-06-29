import 'package:flutter/material.dart';
import 'package:todo/models/todo_model.dart';

class NewTodo extends StatefulWidget {
  const NewTodo({super.key});
  @override
  State<StatefulWidget> createState() {
    return _NewTodoState();
  }
}

class _NewTodoState extends State<NewTodo> {
  Category _selectedCategory = Category.personal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TextField(
            autocorrect: true,
            keyboardType: TextInputType.text,
            maxLength: 50,
            decoration: InputDecoration(label: Text("New Todo")),
          ),
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
          )
        ],
      ),
    );
  }
}
