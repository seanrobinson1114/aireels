// Imports
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

/**
 * Game Timer
 * @author sean
 */
class GameTimer extends StatefulWidget {
  GameTimer({Key key}) : super(key: key);

  // Create state
  @override 
  _GameTimerState createState() => _GameTimerState();
}

/**
 * GameTimer state
 * @author sean
 */
class _GameTimerState extends State<GameTimer> {
  int _time = 0;
  final Stopwatch _stopwatch = new Stopwatch();
  final Duration _duration = new Duration(seconds: 1);

  // Create periodic timer when initializing the state
  @override 
  void initState() {
    super.initState();
    _stopwatch.start();
    
    // Updates state time by executing callback
    final _periodic_timer = new Timer.periodic(_duration, updateTime);
  }

  // Update and display new time
  void updateTime(Timer timer) {
    setState(() {
      _time = _stopwatch.elapsed.inSeconds;
    });
  }
  
  // Build description
  @override 
  Widget build(BuildContext context) {
    return Material(
      child: Align(
        alignment: Alignment.center,
        child: Text(
          '$_time',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          )
        )
      ),
    );
  }
}