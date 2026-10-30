import 'package:flutter/material.dart';
import '../database/database_helper.dart';

class TestsScreen extends StatelessWidget {
  const TestsScreen({super.key});

  Future<void> _ouvrirBase() async {
    final db = await DatabaseHelper().database;
    debugPrint('Base ouverte : ${db.path}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Banc d\'essai')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: _ouvrirBase,
            child: const Text('Ouvrir la base'),
          ),
          // Les prochains boutons de test viendront ici
        ],
      ),
    );
  }
}