import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key, this.favoriteMeal}) : super(key: key);
  final List<Meal>? favoriteMeal;

  @override
  Widget build(BuildContext context) {
    if (favoriteMeal == null || favoriteMeal!.isEmpty) {
      return Center(
        child: Text('You not have any favorite. \nadd some.'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            title: favoriteMeal![index].title,
            imageUrl: favoriteMeal![index].imageUrl,
            duration: favoriteMeal![index].duration,
            complexity: favoriteMeal![index].complexity,
            affordability: favoriteMeal![index].affordability,
            id: favoriteMeal![index].id,
          );
        },
        itemCount: favoriteMeal!.length,
      );
    }
  }
}
