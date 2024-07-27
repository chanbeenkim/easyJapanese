import 'package:audioplayers/audioplayers.dart';
import 'package:easy/view/widgets/japanese_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HelloPage extends ConsumerWidget {
  const HelloPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final audioPlayer = AudioPlayer();
    final List<Map<String, String>> greetings = [
      {
        'audio': 'sounds/greetings/hi_morning.mp3',
        'title': '아침인사',
        'subTitle': '오하요-우 고자이마쓰',
        'jTitle': 'おはようごじゃいます'
      },
      {
        'audio': 'sounds/greetings/hi_afternoon.mp3',
        'title': '점심인사',
        'subTitle': '곤니찌와',
        'jTitle': 'こんにちは'
      },
      {
        'audio': 'sounds/greetings/hi_evening.mp3',
        'title': '저녁인사',
        'subTitle': '곤방와',
        'jTitle': 'こんばんは'
      },

      {
        'audio': 'sounds/greetings/nice_to_meet_you.mp3',
        'title': '처음 뵙겠습니다',
        'subTitle': '하지메마시떼',
        'jTitle': 'はじめまして'
      },
      {
        'audio': 'sounds/greetings/nice_to_meet_you_again.mp3',
        'title': '잘 부탁드립니다',
        'subTitle': '도-조 요루시쿠 오네가이시마스',
        'jTitle': 'どうぞよろしくおねがいします'
      },

      {
        'audio': 'sounds/greetings/thank_you.mp3',
        'title': '감사합니다',
        'subTitle': '아리가토- 고자이마스',
        'jTitle': 'ありがとうございます'
      },
      {
        'audio': 'sounds/greetings/sorry.mp3',
        'title': '죄송합니다',
        'subTitle': '스이마센',
        'jTitle': 'ごめんなさい'
      },
      {
        'audio': 'sounds/greetings/no_thank_you.mp3',
        'title': '아니요, 괜찮습니다',
        'subTitle': '이이에, 다이조-부데스',
        'jTitle': 'いいえ, だいじょうぶです'
      },

      {
        'audio': 'sounds/greetings/sorry_may_i_ask.mp3',
        'title': '죄송합니다만 뭐 좀 여쭤봐도 될까요?',
        'subTitle': '스미마센가 찌욧또 오키키시테모 이이테스카?',
        'jTitle': 'すみませんが、ちょっとお聞きしてもいいですか？'
      },
      {
        'audio': 'sounds/greetings/eat_well_before.mp3',
        'title': '잘 먹겠습니다',
        'subTitle': '이따다키마쓰',
        'jTitle': 'いただきます'
      },
      {
        'audio': 'sounds/greetings/eat_well_after.mp3',
        'title': '잘 먹었습니다',
        'subTitle': '고찌소우사마 데시따',
        'jTitle': 'ごちそうさまでした'
      },
      {
        'audio': 'sounds/greetings/wait_a_moment.mp3',
        'title': '잠시 기다려주세요',
        'subTitle': '찌욧또 맛데꾸다사이',
        'jTitle': 'ちょっと まってください'
      },

      {
        'audio': 'sounds/greetings/cant_speak_japanese.mp3',
        'title': '일본어 할 줄 몰라요',
        'subTitle': '니홍고와 하나세마셍',
        'jTitle': '日本語は話せません'
      },

      {
        'audio': 'sounds/greetings/slow_please.mp3',
        'title': '천천히 부탁합니다',
        'subTitle': '윳쿠리 오네가이시마스',
        'jTitle': 'ゆっくりお願いします'
      },
      {
        'audio': 'sounds/greetings/yes.mp3',
        'title': '네',
        'subTitle': '하이',
        'jTitle': 'はい'
      },
      {
        'audio': 'sounds/greetings/no.mp3',
        'title': '아니오',
        'subTitle': '이-에',
        'jTitle': 'いいえ'
      },
      // {
      //   'audio': 'sounds/greetings/where_is_it.mp3',
      //   'title': '어디에 있습니까?',
      //   'jTitle': 'どこにありますか？'
      // },
      // {
      //   'audio': 'sounds/greetings/where_is_here.mp3',
      //   'title': '여기는 어디입니까?',
      //   'jTitle': 'ここはどこですか？'
      // },
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
