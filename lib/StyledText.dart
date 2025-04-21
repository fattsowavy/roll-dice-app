import 'package:flutter/material.dart';

class Styledtext extends StatelessWidget {
  const Styledtext({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Hello World",
      style: TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
