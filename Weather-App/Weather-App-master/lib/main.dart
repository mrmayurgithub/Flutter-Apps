
import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
  theme: ThemeData.dark(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoadingScreen();
  }
}
