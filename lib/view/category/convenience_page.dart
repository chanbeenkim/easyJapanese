import 'package:audioplayers/audioplayers.dart';
import 'package:easy/view/widgets/japanese_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConveniencePage extends ConsumerWidget {
  const ConveniencePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final audioPlayer = AudioPlayer();
    final List<Map<String, String>> greetings = [
      {
        'audio': 'sounds/convenience/where_is_box_launch.mp3',
        'title': '도시락은 어디에 있나요?',
        'subTitle': '오벤토오와 도코니 아리마스카?',
        'jTitle': 'お弁当はどこにありますか？'
      },
      {
        'audio': 'sounds/convenience/pay.mp3',
        'title': '계산해 주세요',
        'subTitle': '오카이케에 오네가이시마스',
        'jTitle': 'お会計お願いします'
      },
      {
        'audio': 'sounds/convenience/how_much.mp3',
        'title': '얼마에요?',
        'subTitle': '이쿠라데스카?',
        'jTitle': 'いくらですか?'
      },
      {
        'audio': 'sounds/convenience/cook_box.mp3',
        'title': '도시락 데워드릴까요?',
        'subTitle': '오벤토오오 아타타메마쇼오카',
        'jTitle': 'お弁当を温めましょうか？'
      },
      {
        'audio': 'sounds/convenience/fish_cake.mp3',
        'title': '어묵 주세요',
        'subTitle': '오덴오 오네가이시마스',
        'jTitle': 'おでんをお願いします'
      },
      {
        'audio': 'sounds/convenience/plastic_bag.mp3',
        'title': '봉투 주세요',
        'subTitle': '후우토오 오네가이시마스',
        'jTitle': '封筒をお願いします'
      },
      {
        'audio': 'sounds/convenience/chopsticks.mp3',
        'title': '젓가락 주세요',
        'subTitle': '오하시오 오네가이시마스',
        'jTitle': 'おはしをおねがいします'
      },
      {
        'audio': 'sounds/convenience/separately.mp3',
        'title': '따로 담아주세요',
        'subTitle': '베츠베츠니 오네가이시마스',
        'jTitle': '別々にお願いします'
      },
      {
        'audio': 'sounds/convenience/check_age.mp3',
        'title': '연령 확인 부탁드립니다',
        'subTitle': '넨레에노 카쿠닌오 오네가이시마스',
        'jTitle': '年齢の確認をお願いします'
      },
      {
        'audio': 'sounds/convenience/touch_screen.mp3',
        'title': '화면 터치해주세요',
        'subTitle': '가멘니 탓치오 오네가이시마스',
        'jTitle': '画面にタッチをお願いします'
      },
      {
        'audio': 'sounds/convenience/no_receipt.mp3',
        'title': '영수증은 필요없습니다',
        'subTitle': '료오슈우쇼와 이리마세',
        'jTitle': '領収書は要りません'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '편의점',
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
              children: greetings.map((greeting) {
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
