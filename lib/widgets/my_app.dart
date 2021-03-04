import 'package:flutter/material.dart';
import 'package:test_application/widgets/screen_random_color_widget.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandColor(),
      debugShowCheckedModeBanner: false,
    );
  }
}
