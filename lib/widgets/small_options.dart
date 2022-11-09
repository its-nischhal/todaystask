import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmallOptions extends StatelessWidget {
  final String text;

  SmallOptions(this.text) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextButton(
        onPressed: (){},
        child: Container(
          height: 37 ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF003980),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}