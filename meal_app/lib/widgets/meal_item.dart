import 'package:flutter/material.dart';
import '../screens/meal_detail_screen.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final String id;
  final int duration;
  final String title;
  final String imageUrl;

  final Complexity complexity;
  final Affordability affordability;

  const MealItem({
    required this.id,
    required this.duration,
    required this.title,
    required this.imageUrl,
    required this.complexity,
    required this.affordability,
  });

  String get complexityText{
    switch(complexity){
      case Complexity.simple: return'Simple'; break;
      case Complexity.Challenging: return'Challenging'; break;
      case Complexity.Hard: return'Hard'; break;
      default: return'Simple'; break;
    }
  }

  String get affordabilityText{
    switch(affordability){
      case Affordability.Affordable: return'Simple'; break;
      case Affordability.Price: return'Challenging'; break;
      case Affordability.Luxurious: return'Hard'; break;
      default: return'Unknown'; break;
    }
  }

  void selectMeal(ctx){
    Navigator.of(ctx).pushNamed(
      MealDetailScreen.routeName,
      arguments: id
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(imageUrl, height: 200, width: double.infinity, fit: BoxFit.cover,),
                ),
                Positioned(
                  bottom: 20,
                    right: 10,
                    child: Container(
                      width: 220,
                        color: Colors.black54,
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        child: Text(title, style: TextStyle(fontSize: 26, color: Colors.white), softWrap: true, overflow: TextOverflow.fade,)
                    )
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 6,),
                      Text("$duration min"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(width: 6,),
                      Text("$complexityText"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(width: 6,),
                      Text("$affordabilityText"),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
