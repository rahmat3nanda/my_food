import 'package:flutter/material.dart';

class PillWidget extends StatelessWidget {
  const PillWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 10.0),
        Container(
          height: 5.0,
          width: 25.0,
          decoration: BoxDecoration(
            color: Colors.blueGrey[200],
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
