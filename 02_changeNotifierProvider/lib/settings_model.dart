import 'package:flutter/foundation.dart';

class SettingsModel extends ChangeNotifier {
  bool _showImage = true;

  bool get showImage => _showImage;

  void setShowImage(bool value) {
    _showImage = value;
    notifyListeners();
  }
}
