import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class SpeechToText extends StatelessWidget {
  SpeechToText({super.key});

  stt.SpeechToText speech = stt.SpeechToText();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      margin: const EdgeInsets.only(bottom: 40),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 145, 6, 6),
        borderRadius: BorderRadius.circular(60),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        onTapDown: (details) => recognizeSpeech(),
        onTapUp: (details) => print('tapped up'),
        child: const Icon(
          Icons.mic,
          size: 60,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }

  void recognizeSpeech() async {
    bool available = await speech.initialize( onStatus: statusListener, onError: errorListener, finalTimeout: const Duration(milliseconds: 1000) );
    if (available) {
      speech.listen(onResult: resultListener, partialResults: false, listenFor: const Duration(milliseconds: 2500), );
    } else {
      print('The user has denied the use of speech recognition.');
    }
  }

  void resultListener(result) {
    print('result listener');
    print(result.recognizedWords);

  }

  void statusListener(String) {
    print('status listener');
  }

  void errorListener(error) {
    print('error listener');
    print(error);
  }
}