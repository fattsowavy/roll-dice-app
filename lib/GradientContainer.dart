import 'dart:math';
import 'package:flutter/material.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key});

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  int currentDiceNumber = 1;
  void rollDice() {
    setState(() {
      currentDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFF7CFD8), Color(0xFFF4F8D3)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: Image.asset(
                'lib/assets/dice-images/dice-$currentDiceNumber.png',
                key: ValueKey(currentDiceNumber),
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: rollDice,
              style: ElevatedButton.styleFrom(
                foregroundColor: Color(0xFF8E7DBE),
                backgroundColor: Color(0xFFA6D6D6),
              ),
              child: const Text("Roll Dice"), // bug 
            ),
          ],
        ),
      ),
    );
  }
}
