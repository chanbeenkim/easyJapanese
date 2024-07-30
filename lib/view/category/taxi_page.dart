import 'package:audioplayers/audioplayers.dart';
import 'package:easy/view/widgets/japanese_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaxiPage extends ConsumerWidget {
  const TaxiPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final audioPlayer = AudioPlayer();
    final List<Map<String, String>> taxi = [
      {
        'audio': 'sounds/taxi/taxi_go.mp3',
        'title': '~까지 가주세요',
        'subTitle': '~마데 오네가이시마스',
        'jTitle': '~までお願いします'
      },
      {
        'audio': 'sounds/taxi/how_much_airport.mp3',
        'title': '공항까지 요금이 얼마나 될까요?',
        'subTitle': '쿠우코오마데 료오킨와 도노구라이데쇼오카',
        'jTitle': '空港まで、料金はどのぐらいでしょうか?'
      },
      {
        'audio': 'sounds/taxi/how_much_airport.mp3',
        'title': '공항까지 얼마나 걸려요?',
        'subTitle': '쿠우코오마데 도노구라이 지칸가 카카리마스카',
        'jTitle': '空港まで、どのぐらい時間がかかりますか?'
      },
      {
        'audio': 'sounds/taxi/fast.mp3',
        'title': '빨리 가주세요',
        'subTitle': '하야쿠 잇테쿠다사이',
        'jTitle': '速く行ってください'
      },
      {
        'audio': 'sounds/taxi/stop.mp3',
        'title': '여기 세워주세요',
        'subTitle': '코코니 토메테쿠다사이',
        'jTitle': 'ここに止めてください'
      },
      {
        'audio': 'sounds/taxi/how_much.mp3',
        'title': '얼마에요?',
        'subTitle': '이쿠라데스카?',
        'jTitle': 'いくらですか?'
      },
      {
        'audio': 'sounds/taxi/bag.mp3',
        'title': '짐 꺼낼게요',
        'subTitle': '니모츠오 토리다시마스',
        'jTitle': '荷物を取り出します'
      },
      {
        'audio': 'sounds/taxi/sorry_may_i_ask.mp3',
        'title': '죄송합니다만 뭐 좀 여쭤봐도 될까요?',
        'subTitle': '스미마센가 찌욧또 오키키시테모 이이테스카?',
        'jTitle': 'すみませんが、ちょっとお聞きしてもいいですか？'
      },
    ];

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
              children: taxi.map((greeting) {
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
