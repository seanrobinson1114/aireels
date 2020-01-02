// Imports
import 'package:flutter/material.dart';
import 'package:aireels/StartScreen.dart';
import 'package:aireels/Game.dart';

void main() => runApp(Aireels());

/**
 * Application root widget
 * @author sean
 */
class Aireels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aireels',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => StartScreen(),
        '/game': (context) => Game()
      }
    );
  }
}
