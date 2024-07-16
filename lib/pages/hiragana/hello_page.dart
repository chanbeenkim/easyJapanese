import 'package:audioplayers/audioplayers.dart';
import 'package:easy/pages/widgets/japanese_card_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HelloPage extends ConsumerWidget {
  const HelloPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final audioPlayer = AudioPlayer();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '인사',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                JapaneseCardWidget(
                  japaneseAudio: 'sounds/hi_morning.mp3',
                  title: '아침인사 おはようごじゃいます',
                  audioPlayer: audioPlayer,
                ),
                const SizedBox(
                  height: 8,
                ),
                JapaneseCardWidget(
                  japaneseAudio: 'sounds/hi_afternoon.mp3',
                  title: '점심인사 こんにちは',
                  audioPlayer: audioPlayer,
                ),
                const SizedBox(
                  height: 8,
                ),
                JapaneseCardWidget(
                  japaneseAudio: 'sounds/hi_evening.mp3',
                  title: '저녁인사 こんばんは',
                  audioPlayer: audioPlayer,
                ),
                const SizedBox(
                  height: 8,
                ),
                JapaneseCardWidget(
                  japaneseAudio: 'sounds/thank_you.mp3',
                  title: '감사합니다 ありがとうございます',
                  audioPlayer: audioPlayer,
                ),
                const SizedBox(
                  height: 8,
                ),
                JapaneseCardWidget(
                  japaneseAudio: 'sounds/yes.mp3',
                  title: '네 はい',
                  audioPlayer: audioPlayer,
                ),
                const SizedBox(
                  height: 8,
                ),
                JapaneseCardWidget(
                  japaneseAudio: 'sounds/no.mp3',
                  title: '아니오 いいえ',
                  audioPlayer: audioPlayer,
                ),
                const SizedBox(
                  height: 8,
                ),
                JapaneseCardWidget(
                  japaneseAudio: 'sounds/sorry.mp3',
                  title: '죄송합니다 ごめんなさい',
                  audioPlayer: audioPlayer,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
