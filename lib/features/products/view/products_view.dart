import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () => context.beamToNamed('/'),
            child: const Text('Products')),
      ),
    );
  }
}
