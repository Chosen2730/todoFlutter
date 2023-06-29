import 'package:flutter/material.dart';
import 'package:todo/widgets/categories.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({required this.onChangeScreen, super.key});

  final void Function() onChangeScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: onChangeScreen,
                icon: const Icon(Icons.home_outlined),
                color: const Color.fromARGB(179, 6, 93, 180),
                padding: EdgeInsets.zero,
              ),
              const Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/user.png',
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            color: Theme.of(context).colorScheme.primary,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Flexible(
                    child: Text(
                      "Manage your time well",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/images/book.png',
                    width: 100,
                    height: 100,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Categories",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const CategoryWidget(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "You have 10 task for today",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
