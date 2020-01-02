// Imports
import 'package:flutter/widgets.dart';
import 'package:aireels/GameTimer.dart';
import 'package:flutter/material.dart';

/**
 * Game
 * @author sean
 */
class Game extends StatefulWidget {
  const Game({Key key}) : super(key: key);

  // Create state
  @override 
  _GameState createState() => _GameState();
}

/**
 * Game state
 * @author sean
 */
class _GameState extends State<Game> {
   
  // Build description
  @override 
  Widget build(BuildContext context) {
    return Material(
      child: GameTimer()
    );
  }
}
