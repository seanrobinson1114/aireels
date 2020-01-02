// Imports
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/**
 * Start screen of game
 * @author sean
 */
class StartScreen extends StatelessWidget {
  const StartScreen({Key key}) : super(key: key);

  // Build description
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
          onPressed: () {Navigator.pushNamed(context, '/game');},
          child: Text(
            'Start Game',
            style: TextStyle(fontSize: 20)
          ),
      ),
    );
  }
}