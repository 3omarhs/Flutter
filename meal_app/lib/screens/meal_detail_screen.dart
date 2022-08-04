import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = 'meal_detail';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Text(text, style: Theme
            .of(context)
            .textTheme
            .title)
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: 150,
        width: 300,
        child: child
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute
        .of(context)
        ?.settings
        .arguments as String;
    final selectedeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(title: Text(selectedeal.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(selectedeal.imageUrl),
            ),
            /*Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text("Ingredients", style: Theme
                  .of(context)
                  .textTheme
                  .title,),
            ),*/
            buildSectionTitle(context, "Ingredients"),
            /*Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 150,
              width: 300,
              child: ListView.builder(
                itemBuilder: (cts, index) => Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(selectedeal.ingredients[index]),
                  )
                ),
                itemCount: selectedeal.ingredients.length,
              ),
            ),*/
            buildContainer(
              ListView.builder(
                itemBuilder: (cts, index) =>
                    Card(
                        color: Theme
                            .of(context)
                            .accentColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Text(selectedeal.ingredients[index]),
                        )
                    ),
                itemCount: selectedeal.ingredients.length,
              ),
            ),
            buildSectionTitle(context, "Steps"),
            buildContainer(
              ListView.builder(
                itemBuilder: (cts, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("# ${index + 1}"),
                      ),
                      title: Text(selectedeal.steps[index]),
                    ),
                    Divider(),
                  ],
                ),
                itemCount: selectedeal.steps.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
