import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/meal_item.dart';
import '../models/meal.dart';
import '../models/meal.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;
  const CategoryMealsScreen({Key? key, required this.availableMeal})
      : super(key: key);
  final List<Meal> availableMeal;
  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  late String categoryTitle;
  late List<Meal> displayedMeals;
  bool _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;

      categoryTitle = routeArgs['title'] as String;
      final String categoryId = routeArgs['id'] as String;
      displayedMeals = widget.availableMeal.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
    }
    _loadedInitData = true;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              title: displayedMeals[index].title,
              imageUrl: displayedMeals[index].imageUrl,
              duration: displayedMeals[index].duration,
              complexity: displayedMeals[index].complexity,
              affordability: displayedMeals[index].affordability,
              id: displayedMeals[index].id,
            );
          },
          itemCount: displayedMeals.length,
        ));
  }
}
