import 'dart:math';

import 'package:findfiles/button_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Photos extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _menuNavigation(context),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.border_all), onPressed: () { print('BORDER 1 '); }, ),
                  IconButton(icon: Icon(Icons.border_vertical), onPressed: () { print('BORDER 1 '); }, ),
                ],
              ),
            ),
            _cardImage(context),
            _cardImage(context),
        
          ],
        ),
      ),
    );
  }

  _cardImage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(38.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.blueAccent,
        ),
      ),
    );
  }

  _menuNavigation(BuildContext context) {

    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70.0), bottomRight: Radius.circular(70.0)),
        color: Color(0xFF151528),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0),
            child: Row(
              children: <Widget>[
                ButtonIcon(Icons.arrow_back, Colors.white),
                Spacer(),
                Text('Photos', style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600
                ),),
                Spacer(),
                ButtonIcon(Icons.add, Colors.white),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Column(
              children: <Widget>[
                Text('Used space in the folder', style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('6.2/', style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.w600
                      ),),
                      Text('18 GB', style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.w600
                      ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}