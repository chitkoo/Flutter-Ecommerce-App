import 'package:flutter/material.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return _CollectionView(
      title: title,
    );
  }
}

class _CollectionView extends StatelessWidget {
  const _CollectionView({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
    );
  }
}
