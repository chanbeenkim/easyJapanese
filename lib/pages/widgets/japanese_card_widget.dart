import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class JapaneseCardWidget extends StatelessWidget {
  final String japaneseAudio;
  final String title;
  final AudioPlayer audioPlayer;
  const JapaneseCardWidget(
      {super.key,
      required this.japaneseAudio,
      required this.title,
      required this.audioPlayer});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await audioPlayer.stop();
        await audioPlayer.play(
          AssetSource(
            japaneseAudio,
          ),
        );
      },
      child: Ink(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontFamily: 'MinSans',
            ),
          ),
        ),
      ),
    );
  }
}
