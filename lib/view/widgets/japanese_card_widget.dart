import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class JapaneseCardWidget extends StatefulWidget {
  final String japaneseAudio;
  final String title;
  final String subTitle;
  final String jTitle;
  final AudioPlayer audioPlayer;

  const JapaneseCardWidget({
    super.key,
    required this.japaneseAudio,
    required this.title,
    required this.subTitle,
    required this.jTitle,
    required this.audioPlayer,
  });

  @override
  State<JapaneseCardWidget> createState() => _JapaneseCardWidgetState();
}

class _JapaneseCardWidgetState extends State<JapaneseCardWidget> {
  Future<void> _playAudio() async {
    await widget.audioPlayer.stop();
    await widget.audioPlayer.play(AssetSource(widget.japaneseAudio));
  }

  @override
  void dispose() {
    widget.audioPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _playAudio,
      child: Ink(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontFamily: 'MinSans',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              widget.jTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontFamily: 'MinSans',
              ),
            ),
            Text(
              widget.subTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontFamily: 'MinSans',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
