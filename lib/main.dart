import 'package:flutter/material.dart';
import 'package:order_coffee/screens/coffee%20details/coffee_details.dart';
import 'package:order_coffee/screens/home%20page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/coffee_details',
      routes: {
        '/' : (context) => HomePage(),
        '/coffee_details' : (context) => CoffeeDetails()
      } ,
    );
  }
}


