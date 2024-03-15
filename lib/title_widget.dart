import 'package:flutter/material.dart';

class titleCategory extends StatelessWidget {

String title;
titleCategory({required this.title});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.purpleAccent,
          ),
      child: Center(child: Text(title,style: TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),)),
    ));
  }
}
