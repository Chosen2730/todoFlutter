import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { work, personal, shopping, health }

const categoryIcons = {
  Category.work: Icons.work_outline_rounded,
  Category.health: Icons.health_and_safety_rounded,
  Category.personal: Icons.supervised_user_circle_rounded,
  Category.shopping: Icons.shopping_basket_rounded,
};

class Todos {
  Todos({
    required this.todo,
    required this.category,
  }) : id = uuid.v4();

  final String todo;
  final String id;
  final Category category;
}
