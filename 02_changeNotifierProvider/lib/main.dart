import 'package:flutter/material.dart';
import 'package:flutter_tutorial_state/settings_model.dart';
import 'package:flutter_tutorial_state/settings_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingsModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider mit ChangeNotifier'),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          ),
        ],
      ),
      body: Center(
        child: Consumer<SettingsModel>(
          builder: (context, value, child) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Hallo Welt!'),
              ),
              if (value.showImage)
                Image.network('http://source.unsplash.com/random/300x600'),
            ],
          ),
        ),
      ),
    );
  }
}
