import 'package:flutter/material.dart';
class ToggleQuantity extends StatefulWidget {
  const ToggleQuantity({Key? key}) : super(key: key);

  @override
  _ToggleQuantityState createState() => _ToggleQuantityState();
}

class _ToggleQuantityState extends State<ToggleQuantity> {
  final Color activeBgColor = Colors.orangeAccent;
  final Color disabledBgColor = Colors.black12;
  final Color activeTextColor = Colors.white;
  final Color disabledTextColor = Colors.brown;

  final List<bool> _isQuantitySelected = [false, false ,true];
  int selectedSizeNo = 2;
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return  ToggleButtons(
      isSelected: _isQuantitySelected,
      splashColor: Colors.transparent,
      fillColor: Colors.transparent,
      renderBorder: false ,
      children: [
        getCircleAvatar(
            text: '-',
            bgColor: selectedSizeNo==0?  activeBgColor: disabledBgColor,
            txtColor: selectedSizeNo==0?  activeTextColor: disabledTextColor
        ),
        getCircleAvatar(
          text: quantity.toString(),
          bgColor: Colors.white,
          txtColor: Colors.black,
          textSize: 24,
        ),
        getCircleAvatar(
            text: '+',
            bgColor: selectedSizeNo==2?  activeBgColor: disabledBgColor,
            txtColor: selectedSizeNo==2?  activeTextColor: disabledTextColor
        ),
      ],
      onPressed: (int newIndex) {
        setState(() {
          for (int index = 0; index < _isQuantitySelected.length; index++) {
            index== newIndex? _isQuantitySelected[index] = true: _isQuantitySelected[index] = false;
          }
          if(newIndex == 0 && quantity >=2 ){
            quantity -= 1;
          }
          else if (newIndex ==2){
            quantity += 1;
          }
          selectedSizeNo = newIndex;
        });
      },
    );
  }
  Widget getCircleAvatar ({
    required String text,
    required Color bgColor,
    required Color txtColor,
    double? textSize,

  }) => CircleAvatar(
    child: Text(
      text,
      style: TextStyle(
          fontSize: textSize?? 18.0,
          fontWeight: FontWeight.bold,
          color: txtColor
      ),
    ),
    backgroundColor:bgColor,
    radius: 22,
  );
}
