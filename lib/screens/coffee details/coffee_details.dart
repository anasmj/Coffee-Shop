import 'package:flutter/material.dart';
import 'package:order_coffee/screens/coffee%20details/coffe%20details%20page%20widget/toggle_coffee_size.dart';
import 'package:order_coffee/screens/coffee%20details/coffe%20details%20page%20widget/toggle_quantity.dart';

class CoffeeDetails extends StatelessWidget {
  CoffeeDetails({Key? key}) : super(key: key);

  final double SIDE_SPACING= 16.0;
  final Color activeBgColor = Colors.orangeAccent;
  final Color disabledBgColor = Colors.black12;
  final Color activeTextColor = Colors.white;
  final Color disabledTextColor = Colors.brown;

  late double imageWidth ;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    imageWidth = screenWidth*.9;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
            onTap: ()=> Navigator.pop(context),
            child: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SIDE_SPACING),
            child: const Icon(Icons.menu, color: Colors.black,),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SIDE_SPACING),
        child: ListView(
          children:  [
            const Text(
              'Lattee',
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            ),
            coffeeDescription(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: getCoffeeImage(),
            ),
            getTitle('Size'),
            ToggleCoffeeSize(),
            getTitle('Quantity'),
            const ToggleQuantity(),
            const Text('Price', style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
            const Text('IDR 70.0', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        child: Icon(Icons.shopping_basket_rounded),
        onPressed: (){},
      ),
    );
  }

  Widget getTitle (String title )=> Text(
    title,
    style: const TextStyle(
        fontSize: 18,fontWeight: FontWeight.bold
    ),
  );
  
  Widget getCoffeeImage (){
    return  Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/coffee_images/c2.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      height: imageWidth *.8,
      width: imageWidth,
    );
  }
  Widget  coffeeDescription ()=> const Text(
    'cafe latte has a concentration in the form of espresso 25%',
    style: TextStyle(
      fontSize: 18,
      color: Colors.grey,
    ),
  );
}
