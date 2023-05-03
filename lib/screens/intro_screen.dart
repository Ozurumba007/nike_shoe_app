import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          // Logo

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.asset(
              'lib/images/nike_logo.png',
              height: 200,
            ),
          ),

          const SizedBox(height: 48),

          // title

          // sub title

          // start new button
        ],
      ),
    );
  }
}
