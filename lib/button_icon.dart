import 'dart:wasm';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {

  final Color color;
  final IconData folder_open;

  ButtonIcon(this.folder_open, this.color);

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[200],
          width: 2,
        ),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: IconButton(
        icon: Icon(
          this.folder_open,
          color: this.color,
//          color: Colors.black,
        ),
        onPressed: () { print('A2'); },
      ),
    );
  }
}