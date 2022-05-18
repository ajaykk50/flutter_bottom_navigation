import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final list = [
    'Apple',
    'Orange',
    'Pine Apple',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: DropdownButtonFormField(
                  items: list.map((e) {
                    return DropdownMenuItem(value: e, child: Text(e));
                  }).toList(),
                  hint: Text('Select Item'),
                  onChanged: (value) {}))),
    );
  }
}
