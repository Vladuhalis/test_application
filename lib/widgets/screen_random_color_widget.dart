import 'package:flutter/material.dart';
import 'dart:math';

class RandColor extends StatefulWidget {
  @override
  _RandColorState createState() => _RandColorState();
}

class _RandColorState extends State<RandColor> {
  final Random _random = Random();

  Color _color = Color(0xFFFFFFFF);

  void changeColor() {
    setState(() {
      _color = Color.fromRGBO(
        //or with fromRGBO with fourth arg as _random.nextDouble(),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextDouble(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GestureDetector(
        onTap: changeColor,
        child: Container(
          color: _color,
          child: Center(
            child: Text(
                "Hey there",
              style: TextStyle(
                fontSize: 48,
                fontFamily: 'Droid Sans',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
