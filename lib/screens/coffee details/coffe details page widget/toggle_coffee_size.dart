import 'package:flutter/material.dart';
class ToggleCoffeeSize extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=> ToggleCoffeeSizeState ();
}
class ToggleCoffeeSizeState extends State<ToggleCoffeeSize>{
  final List<bool> _isSelected = [true, false, false];
  int selectedSizeNo = 0;

  final Color activeBgColor = Colors.orangeAccent;
  final Color disabledBgColor = Colors.black12;
  final Color activeTextColor = Colors.white;
  final Color disabledTextColor = Colors.brown;



  @override
  Widget build (BuildContext context){
    return ToggleButtons(
      splashColor: Colors.transparent,
      fillColor: Colors.transparent,
      renderBorder: false ,
      children: [
        getCircleAvatar(
            coffeeSize: 'S',
            bgColor: selectedSizeNo==0?  activeBgColor: disabledBgColor,
            txtColor: selectedSizeNo==0?  activeTextColor: disabledTextColor,
        ),
        getCircleAvatar(
          coffeeSize: 'M',
          bgColor: selectedSizeNo==1?  activeBgColor: disabledBgColor,
          txtColor: selectedSizeNo==1?  activeTextColor: disabledTextColor,
        ),
        getCircleAvatar(
          coffeeSize: 'L',
          bgColor: selectedSizeNo==2?  activeBgColor: disabledBgColor,
          txtColor: selectedSizeNo==2?  activeTextColor: disabledTextColor,
        ),
      ],
      isSelected: _isSelected,
      onPressed: (int newIndex) {
        for (int index = 0; index < _isSelected.length; index++) {
          index== newIndex? setState(() =>{
            _isSelected[index] = true,
          }): setState(() => {
            _isSelected[index] = false,
          });
        }
        selectedSizeNo = newIndex;
      },
    );
  }

  Widget getCircleAvatar ({
    required String coffeeSize,
    required Color bgColor,
    required Color txtColor
  }) => CircleAvatar(
    child: Text(
      coffeeSize,
      style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: txtColor
      ),
    ),
    backgroundColor:bgColor,
    radius: 22,
  );
}