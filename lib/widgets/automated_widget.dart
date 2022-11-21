import 'package:flutter/material.dart';

class AutomatedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/robot.png',
          scale: 2,
        ),
        const SizedBox(width: 3),
        const Text(
          'Automated',
          style: TextStyle(color: Colors.grey, fontSize: 17),
        ),
      ],
    );
  }
}
