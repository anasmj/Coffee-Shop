import 'package:flutter/material.dart';
import 'home page widgets/custom_bottom_navigatin_bar.dart';
import 'home page widgets/custome_search_field.dart';
import 'home page widgets/item_card.dart';
import 'home page widgets/toggle_drink.dart';


class HomePage extends StatelessWidget {
  List<ItemCard> coffeeList = [
    ItemCard(),
    ItemCard(),
    ItemCard(),
    ItemCard(),
    ItemCard(),
    ItemCard(),
    ItemCard(),
    ItemCard(),
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
      itemCount: 8,
      itemBuilder: (context, index) => coffeeList[index],
    );
  }
}





