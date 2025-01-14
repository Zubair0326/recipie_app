import 'package:flutter/material.dart';

class Chinese extends StatelessWidget {
  const Chinese({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        title: Text('Chinese'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Chinsese Recipies")],
        ),
      ),
    );
  }
}