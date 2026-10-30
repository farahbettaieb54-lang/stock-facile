import 'package:flutter/material.dart';

void main() {
  runApp(const StockfacileApp());
}
class StockfacileApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      title: 'StockFacile',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StockFacile '),
      ),
    );
  }
}