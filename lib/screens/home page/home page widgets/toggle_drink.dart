import 'package:flutter/material.dart';

class ToggleDrink extends StatefulWidget {
  const ToggleDrink({Key? key}) : super(key: key);

  @override
  _ToggleDrinkState createState() => _ToggleDrinkState();
}

class _ToggleDrinkState extends State<ToggleDrink> {
  final List<bool> _isSelected = [true, false];
  TextStyle toggleTextStyle =
       const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      fillColor: Colors.transparent,
      selectedColor: Colors.blue,
      color: Colors.grey,
      isSelected: _isSelected,
      children: [
        Text(
          'Coffee',
          style: toggleTextStyle,
        ),
        Text(
          'Non Coffee',
          style: toggleTextStyle,
        ),
      ],
      onPressed: (int newIndex) {
        for (int index = 0; index < _isSelected.length; index++) {
          index== newIndex? setState(() => _isSelected[index] = true): setState(() => _isSelected[index] = false);
        }
      },
      renderBorder: false,
    );
  }
}
