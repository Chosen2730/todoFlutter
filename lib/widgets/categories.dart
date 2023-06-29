import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Column(
        children: [
          Image.asset(
            'assets/images/briefcase.png',
          ),
          const SizedBox(
            height: 5,
          ),
          const Text("Work", style: TextStyle(fontSize: 12)),
        ],
      ),
      const Spacer(),
      Column(
        children: [
          Image.asset(
            'assets/images/book2.png',
          ),
          const SizedBox(
            height: 5,
          ),
          const Text("Personal", style: TextStyle(fontSize: 12)),
        ],
      ),
      const Spacer(),
      Column(
        children: [
          Image.asset(
            'assets/images/shopping.png',
          ),
          const SizedBox(
            height: 5,
          ),
          const Text("Shopping", style: TextStyle(fontSize: 12)),
        ],
      ),
      const Spacer(),
      Column(
        children: [
          Image.asset(
            'assets/images/health.png',
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Health",
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    ]);
  }
}
