import 'package:flutter/material.dart';

class ItemsListScreen extends StatelessWidget {
  const ItemsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("All Items")),
      body: const Center(child: Text("Items List View")),
    );
  }
}