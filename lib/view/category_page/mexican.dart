import 'package:flutter/material.dart';

class Mexican extends StatelessWidget {
  const Mexican({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Mexican'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Mexican Recipies")],
        ),
      ),
    );
  }
}