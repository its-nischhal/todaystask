import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final String text;
  final Color color;
  final onpressed;

  Options(this.text, this.color, this.onpressed) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextButton(
        onPressed: onpressed,
        child: Container(
          height: 71,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
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