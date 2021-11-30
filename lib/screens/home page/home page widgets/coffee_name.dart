import 'package:flutter/material.dart';

import '../../consts.dart';

class CoffeeName extends StatelessWidget {
  final String name;
  final double price;
  const CoffeeName({
    Key? key,
    required this.screenSize,
    required this.name,
    required this.price
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  name,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  price.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            )
        ),
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight:  Radius.circular(20),
            bottomLeft:  Radius.circular(20)
        ),
        color: priceTagColor,
      ),
      width: screenSize.height*45,
      height: screenSize.height*.08,
    );
  }
}