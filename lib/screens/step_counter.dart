import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pedometer/pedometer.dart';

class StepCounterPage extends StatefulWidget {
  @override
  _StepCounterPageState createState() => _StepCounterPageState();
}

class _StepCounterPageState extends State<StepCounterPage> {
  String _stepCountValue = '0';

  StreamSubscription<int>? _pedometerSubscription;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  void initPlatformState() async {
    int stepCount = 0;
    _pedometerSubscription = Pedometer.stepCountStream.listen((int event) {
      setState(() {
        stepCount = event;
        _stepCountValue = "$stepCount";
      });
    } as void Function(StepCount event)?) as StreamSubscription<int>?;
  }

  @override
  void dispose() {
    super.dispose();
    if (_pedometerSubscription != null) {
      _pedometerSubscription!.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adım Sayar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Adım Sayısı:',
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              _stepCountValue,
              style: TextStyle(fontSize: 60.0),
            ),
          ],
        ),
      ),
    );
  }
}