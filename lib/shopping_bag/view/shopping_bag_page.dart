import 'package:flutter/material.dart';

class ShoppingBagPage extends StatelessWidget {
  const ShoppingBagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ShoppingBagView();
  }
}

class _ShoppingBagView extends StatelessWidget {
  const _ShoppingBagView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Bag'),
      ),
    );
  }
}
