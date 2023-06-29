import 'package:flutter/material.dart';

enum Category { work, personal, shopping, health }

const CategoryIcons = {
  Category.work: Icons.work,
  Category.health: Icons.health_and_safety,
  Category.personal: Icons.book,
  Category.shopping: Icons.shopping_basket,
};

class Todos {
  const Todos({
    required this.todo,
    // required this.dueDate,
  });

  final String todo;
  // final DateTime dueDate;
}
