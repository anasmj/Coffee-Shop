import 'package:flutter/material.dart';
import 'package:order_coffee/screens/consts.dart';

import 'add_button.dart';
import 'coffee_name.dart';
class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Opacity(
                opacity: priceTagOpacity,
                child: CoffeeName(screenSize: screenSize)),
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
        image:  const DecorationImage(
            image: AssetImage('assets/coffee_images/c2.jpg'),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),

      /// it's been taken care by GridView.builder
      // width: screenSize.width*.45,
      // height: screenSize.height*.32,
    );
  }
}


