


import 'package:flutter_grid_flow/screen/dashboard.dart';

FileIntent? fileIntent;


class FileIntent{
  ScreenHome? startScreen;

  FileIntent({this.startScreen});

  static Future<void> init() async {
    try {
      fileIntent = FileIntent(
        startScreen: ScreenHome.home,
      );
    }
    catch(exception) {
      fileIntent = FileIntent(
        startScreen: ScreenHome.home,
      );
    }
  }


}