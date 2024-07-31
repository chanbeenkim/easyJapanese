import 'package:audioplayers/audioplayers.dart';
import 'package:easy/view/widgets/japanese_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandmarkPage extends ConsumerWidget {
  const LandmarkPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final audioPlayer = AudioPlayer();
    final List<Map<String, String>> landmark = [
      {
        'audio': 'sounds/landmark/ticket.mp3',
        'title': '매표소 어디 있어요?',
        'subTitle': '치켓토우리바와 도코데스카?',
        'jTitle': 'チケット売り場はどこですか？'
      },
      {
        'audio': 'sounds/landmark/where_is_information.mp3',
        'title': '관광안내소 어디 있어요?',
        'subTitle': '칸코오안나이쇼와 도코데스카?',
        'jTitle': '観光案内所はどこですか?'
      },
      {
        'audio': 'sounds/landmark/where_is_shop.mp3',
        'title': '기념품샵 어디 있어요?',
        'subTitle': '기네힌숍프와 도코니 아리마스카?',
        'jTitle': '記念品ショップはどこにありますか?'
      },
      {
        'audio': 'sounds/landmark/korean_guide.mp3',
        'title': '한국어 가이드가 있나요?',
        'subTitle': '칸코쿠고노 가이도산와 이마스카?',
        'jTitle': '韓国語のガイドさんはいますか？'
      },
      {
        'audio': 'sounds/landmark/korean_pamphlet.mp3',
        'title': '한국어 팜플렛 있나요?',
        'subTitle': '칸코쿠고노 판후렛토아리마스카?',
        'jTitle': '韓国語のパンフレットありますか?'
      },
      {
        'audio': 'sounds/landmark/how_much.mp3',
        'title': '입장료 얼마에요?',
        'subTitle': '뉴우조오료오와 이쿠라데스카?',
        'jTitle': '入場料はいくらですか？'
      },
      {
        'audio': 'sounds/landmark/picture.mp3',
        'title': '실례합니다, 사진 찍어주실 수 있나요?',
        'subTitle': '스미마세 샤신 톳테모라에마스카?',
        'jTitle': 'すみません, 写真撮ってもらえますか？'
      },
      {
        'audio': 'sounds/landmark/picture_together.mp3',
        'title': '함께 찍어요',
        'subTitle': '잇쇼니 토리마쇼오',
        'jTitle': 'いっしょに撮りましょう。'
      },
      {
        'audio': 'sounds/landmark/how_long_look_around.mp3',
        'title': '둘러보는 데 얼마나 걸리나요?',
        'subTitle': '미테마와루노니 도레쿠라이 카카리마스카?',
        'jTitle': '見て回るのにどれくらいかかりますか？'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '쇼핑',
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
              children: landmark.map((greeting) {
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
