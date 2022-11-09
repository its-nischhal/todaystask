import 'package:flutter/cupertino.dart';

class MultipleOptions extends StatefulWidget {
  const MultipleOptions({Key? key}) : super(key: key);

  @override
  State<MultipleOptions> createState() => _MultipleOptionsState();
}

class _MultipleOptionsState extends State<MultipleOptions> {
  bool gen = false;
  bool pro = false;
  bool per = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20,10,20,10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Push génériques',style: TextStyle(fontSize: 16,color: Color(0xFF706F6F)),),
              CupertinoSwitch(value: gen, onChanged: (v){gen=v;setState(() {});})
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20,10,20,10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Push promotionnels',style: TextStyle(fontSize: 16,color: Color(0xFF706F6F)),),
              CupertinoSwitch(value: pro, onChanged: (v){pro=v;setState(() {});})
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20,10,20,10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Push personnalisés',style: TextStyle(fontSize: 16,color: Color(0xFF706F6F)),),
              CupertinoSwitch(value: per, onChanged: (v){per=v;setState(() {});})
            ],
          ),
        ),
      ],
    );
  }
}