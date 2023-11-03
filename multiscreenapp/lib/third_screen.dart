import 'package:flutter/material.dart';
import '../second_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
      ),
      itemBuilder: (ctx, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 50,
            color: Colors.red,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              child: const Text('Go to Second Screen'),
            ),
          ),
        );
      },
    );
  }
}
