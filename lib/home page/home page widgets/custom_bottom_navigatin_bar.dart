import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex =0 ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        //color: Colors.green,
        borderRadius: BorderRadius.circular(50),
      ),
      child: FloatingNavbar(
        currentIndex: _currentIndex,
        onTap: (int newIndex){
          setState(()=> _currentIndex = newIndex);
        },
        items: [
          FloatingNavbarItem(icon: Icons.home),
          FloatingNavbarItem(icon: Icons.notification_important),
          FloatingNavbarItem(icon: Icons.favorite,),
          FloatingNavbarItem(icon: Icons.person,)
        ],
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        selectedBackgroundColor: Colors.orangeAccent,
        unselectedItemColor: Colors.brown,
      ),
    );
  }
}
