import 'package:flutter/material.dart';
import 'package:order_coffee/models/coffee.dart';
import 'home page widgets/custom_bottom_navigatin_bar.dart';
import 'home page widgets/custome_search_field.dart';
import 'home page widgets/item_card.dart';
import 'home page widgets/toggle_drink.dart';


class HomePage extends StatelessWidget {
  List<ItemCard> coffeeList = [
    ItemCard(coffee: Coffee(price: 49.0, coffeeName: 'Expresso', imageName: 'c1.jpg')),
    ItemCard(coffee: Coffee(price: 55.0, coffeeName: 'Doppio', imageName: 'c2.jpg')),
    ItemCard(coffee: Coffee(price: 86.0, coffeeName: 'Americano', imageName: 'c3.jpg')),
    ItemCard(coffee: Coffee(price: 65.0, coffeeName: 'Cappucchino', imageName: 'c4.jpg')),
    ItemCard(coffee: Coffee(price: 47.0, coffeeName: 'Latte', imageName: 'c5.jfif')),
    ItemCard(coffee: Coffee(price: 55.0, coffeeName: 'Mocha', imageName: 'c6.jfif')),
    ItemCard(coffee: Coffee(price: 89.0, coffeeName: 'Cortado', imageName: 'c7.jpg')),
    ItemCard(coffee: Coffee(price: 75.0, coffeeName: 'Macchiato', imageName: 'c8.jfif')),
    ItemCard(coffee: Coffee(price: 48.0, coffeeName: 'Afgato', imageName: 'c9.jpg')),
    ItemCard(coffee: Coffee(price: 59.0, coffeeName: 'Irish Coffee', imageName: 'c10.jpg')),
  ];

  final double sideSpacing = 16.0;
  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double cardRatio = height / (width * 2.3);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sideSpacing),
            child: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
          ),
        ],
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: sideSpacing),
          child: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar:
      const Padding(
        padding: EdgeInsets.all(18.0),
        child: CustomBottomNavigationBar(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: sideSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
              child: CustomSearchField(),
            ),
            const Text('Popular Drink', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
            const ToggleDrink(),
            Expanded(
              child: Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                width: width,
                height: height,
                child: showCoffeeList(cardRatio),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showCoffeeList(double cardRatio) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 18.0,
        crossAxisSpacing: 18.0,
        childAspectRatio: cardRatio,
      ),
      itemCount: coffeeList.length,
      itemBuilder: (context, index) => coffeeList[index],
    );
  }
}





