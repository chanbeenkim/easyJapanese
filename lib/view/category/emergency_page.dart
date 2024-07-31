import 'package:audioplayers/audioplayers.dart';
import 'package:easy/view/widgets/japanese_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EmergencyPage extends ConsumerWidget {
  const EmergencyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final audioPlayer = AudioPlayer();
    final List<Map<String, String>> emergency = [
      {
        'audio': 'sounds/emergency/help_me.mp3',
        'title': '도와주세요',
        'subTitle': '타스케테쿠다사이',
        'jTitle': '助けてください'
      },
      {
        'audio': 'sounds/emergency/911.mp3',
        'title': '구급차를 불러주세요',
        'subTitle': '큐우큐우샤오 욘데쿠다사이',
        'jTitle': '救急車を呼んでください'
      },
      {
        'audio': 'sounds/emergency/lost_bag.mp3',
        'title': '가방을 잃어버렸어요',
        'subTitle': '카반오 나쿠시테시마이마시타',
        'jTitle': 'かばんを失くしてしまいました'
      },
      {
        'audio': 'sounds/emergency/passport_lost.mp3',
        'title': '여권을 잃어버렸어요',
        'subTitle': '파스포오토오 나쿠시테시마이마시타',
        'jTitle': 'パスポートを失くしてしまいました'
      },
      {
        'audio': 'sounds/emergency/toilet.mp3',
        'title': '화장실 어디에요?',
        'subTitle': '토이레와 도코데스카',
        'jTitle': 'トイレはどこですか？'
      },
      {
        'audio': 'sounds/emergency/korean_embassy.mp3',
        'title': '한국 대사관이 어디에요?',
        'subTitle': '칸코쿠타이시칸와 도코데스카',
        'jTitle': '韓国大使館はどこですか？'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '응급',
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
              children: emergency.map((greeting) {
                return Column(
                  children: [
                    JapaneseCardWidget(
                      japaneseAudio: greeting['audio']!,
                      title: greeting['title']!,
                      subTitle: greeting['subTitle']!,
                      jTitle: greeting['jTitle']!,
                      audioPlayer: audioPlayer,
                    ),
                    const SizedBox(height: 8),
                  ],
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
