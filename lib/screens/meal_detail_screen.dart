import 'package:flutter/material.dart';

class MealDetaildScreen extends StatelessWidget {
  const MealDetaildScreen({Key? key}) : super(key: key);
  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('meal detaild'),
      ),
      body: const Center(
        child: Text('meal detail page'),
      ),
    );
  }
}
