import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_questions/controller/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ColorChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Changer App'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: 80,
              width: 80,
              color: provider.backgroundColor1,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: 80,
              width: 80,
              color: provider.backgroundColor2,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                provider.changeColor();
              },
              child: const Text('Change Color'),
            )
          ],
        ),
      ),
    );
  }
}
