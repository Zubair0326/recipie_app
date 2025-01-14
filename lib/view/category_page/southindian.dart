import 'package:flutter/material.dart';

class SouthIndian extends StatelessWidget {
  const SouthIndian({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('SouthIndian'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Southindian Recipies")],
        ),
      ),
    );
  }
}