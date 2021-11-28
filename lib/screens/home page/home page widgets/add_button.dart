import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  [
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Colors.grey,
          child: CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.grey[400],
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}