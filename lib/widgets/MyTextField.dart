import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField(this.hint, {Key? key}) : super(key: key);
  final String hint;
  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CupertinoTextField(
        placeholder: hint,
        controller: controller,
        style: TextStyle(fontSize: 17),
        suffix: InkWell(
          onTap: () {
            controller.clear();
          },
          child: Icon(
            Icons.cancel,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
