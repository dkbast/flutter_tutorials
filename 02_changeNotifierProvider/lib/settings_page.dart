import 'package:flutter/material.dart';
import 'package:flutter_tutorial_state/settings_model.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<SettingsModel>(
        builder: (context, value, child) => Center(
          child: FilterChip(
            selected: value.showImage,
            label: Text('Zeige Bild auf Startseite'),
            onSelected: (isSelected) {
              value.setShowImage(isSelected);
            },
          ),
        ),
      ),
    );
  }
}
