import 'package:flutter/material.dart';

import '../../consts.dart';

class CoffeeName extends StatelessWidget {
  const CoffeeName({
    Key? key,
    required this.screenSize,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Short Moacchiato',
                  style: TextStyle(color: Colors.white),
                ),
                Text('IDR 49.99',
                  style: TextStyle(
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
      height: screenSize.height*.10,
    );
  }
}