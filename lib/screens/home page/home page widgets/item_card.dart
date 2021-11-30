import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:order_coffee/models/coffee.dart';
import 'package:order_coffee/screens/consts.dart';

import 'add_button.dart';
import 'coffee_name.dart';
class ItemCard extends StatelessWidget {
  Coffee coffee;
  ItemCard({Key? key, required this.coffee}) : super(key: key);
  final String coffeeDirectory = 'assets/coffee_images/';

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ()=> Navigator.pushNamed(context, '/coffee_details', arguments: coffee),

      child: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Opacity(
                  opacity: priceTagOpacity,
                  child: CoffeeName(screenSize: screenSize, name: coffee.coffeeName, price: coffee.price,)),
            ),
            const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: AddButton(),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          image:   DecorationImage(
              //image: AssetImage('assets/coffee_images/c2.jpg'),
              image: AssetImage('$coffeeDirectory${coffee.imageName}'),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
        ),

        /// it's been taken care by GridView.builder
        // width: screenSize.width*.45,
        // height: screenSize.height*.32,
      ),
    );
  }
}


