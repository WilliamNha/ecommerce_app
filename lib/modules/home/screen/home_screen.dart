import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecommerce'),
      ),
      body: const SizedBox(
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
