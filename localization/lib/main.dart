import 'package:flutter/material.dart';
import 'package:localization/material_design_card.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning Localization'),
      ),
      body: Center(
        child: Column(
          children: [MaterialDesignCard()],
        ),
      ),
    );
  }
}

