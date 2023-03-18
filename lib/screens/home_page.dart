import 'package:claw_control/widgets/control_pad.dart';
import 'package:claw_control/widgets/speech_to_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  IconData btIcon = Icons.bluetooth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
            width: double.infinity,
          ),
          ElevatedButton(onPressed: null, child: Icon(btIcon)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ControlPad(),
              SpeechToText()
            ],
          ),
      ],
      )
    );
  }
}