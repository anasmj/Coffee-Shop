import 'package:flutter/material.dart';
import 'package:order_coffee/screens/coffee%20details/coffe%20details%20page%20widget/toggle_coffee_size.dart';

class CoffeeDetails extends StatelessWidget {
  CoffeeDetails({Key? key}) : super(key: key);

  late double imageWidth ;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    imageWidth = screenWidth;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.arrow_back_ios,color: Colors.black,),
        actions: const [
          Icon(Icons.menu, color: Colors.black,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text(
              'Lattee',
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            ),
            const Text(
              'cafe latte has a concentration in the form of espresso 25%',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            getCoffeeImage(),
            const Text('Size',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold), ),
            ToggleCoffeeSize(),
          ],
        ),
      ),
    );
  }
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
}
