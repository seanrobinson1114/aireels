// Imports
import 'package:flutter/widgets.dart';
import 'package:aireels/GameTimer.dart';
import 'package:flutter/material.dart';
import 'package:aireels/Ship.dart';
import 'package:flutter/services.dart';

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
  FocusNode _focusNode = new FocusNode();

  // Check which key is being pressed
  keyPressCheck(RawKeyEvent event) {
    // Only check for pressing down of key
    if (event is RawKeyDownEvent) {
      if (event.logicalKey == LogicalKeyboardKey.arrowUp ) {
        print( 'up arrow pressed' );
      }
      else if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
        print('down arrow pressed');
      }
      else if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
        print('left arrow pressed');
      }
      else if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
        print('right arrow pressed');
      }
    }
  }
   
  // Build description
  @override 
  Widget build(BuildContext context) {

    return Material(
      color: Colors.black,
      child: Center(
        child: Container(
          child: RawKeyboardListener(
            focusNode: _focusNode,
            autofocus: true,
            onKey: keyPressCheck,
            child: CustomPaint(
              size: Size(50, 50),
              painter: Ship()
            ),
          )
        )
      )
    );
  }
}
