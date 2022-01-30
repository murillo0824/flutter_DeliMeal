import 'package:flutter/material.dart';
import 'package:flutter_meals_app/widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);
  static String routeName = '/filter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your filter'),
      ),
      drawer: const MainDrawer(),
      body: const Center(
        child: Text('filter'),
      ),
    );
  }
}
