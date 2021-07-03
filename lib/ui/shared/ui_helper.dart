import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const Widget horizontalSpaceTiny = SizedBox(width: 4);
const Widget horizontalSpaceSmall = SizedBox(width: 8);
const Widget horizontalSpaceMedium = SizedBox(width: 14);
const Widget horizontalSpaceLarge = SizedBox(width: 28);

const Widget verticalSpaceTiny = SizedBox(height: 4);
const Widget verticalSpaceSmall = SizedBox(height: 8);
const Widget verticalSpaceMedium = SizedBox(height: 14);
const Widget verticalSpaceLarge = SizedBox(height: 28);
const Widget verticalSpaceMassive = SizedBox(height: 32);

hideInput() => SystemChannels.textInput.invokeMethod('TextInput.hide');

setCurrentOverlay(bool isDarkMode) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: isDarkMode ? Brightness.light : Brightness.dark,
  ));
}

Future setPotraitOrientation() {
  return SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}
