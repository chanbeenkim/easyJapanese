import 'package:audioplayers/audioplayers.dart';
import 'package:easy/view/widgets/japanese_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RestaurantPage extends ConsumerWidget {
  const RestaurantPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final audioPlayer = AudioPlayer();
    final List<Map<String, String>> restaurant = [
      {
        'audio': 'sounds/greetings/sorry.mp3',
        'title': '저기요',
        'subTitle': '스이마센',
        'jTitle': 'ごめんなさい'
      },
      {
        'audio': 'sounds/restaurant/menu.mp3',
        'title': '메뉴판 주세요',
        'subTitle': '메뉴-구다사이',
        'jTitle': 'メニューください'
      },
      {
        'audio': 'sounds/restaurant/order.mp3',
        'title': '주문할게요',
        'subTitle': '츄우몬 오네가이시마스',
        'jTitle': 'ちゅうもんおねがいします'
      },
      {
        'audio': 'sounds/restaurant/order_later.mp3',
        'title': '조금 이따가 주문할게요',
        'subTitle': '스코시 시테카라 츄-몬시마스',
        'jTitle': '少ししてから注文します'
      },
      {
        'audio': 'sounds/restaurant/recommend_menu.mp3',
        'title': '추천 메뉴가 있나요?',
        'subTitle': '오스스메노메뉴와 난데스카?',
        'jTitle': 'おすすめのメニューはなんですか?'
      },
      {
        'audio': 'sounds/restaurant/what_is_this.mp3',
        'title': '이건 뭐죠?',
        'subTitle': '코레와 난데스카?',
        'jTitle': 'これは何ですか?'
      },
      {
        'audio': 'sounds/restaurant/give_me_this.mp3',
        'title': '이거 주세요',
        'subTitle': '코레쿠다사이',
        'jTitle': 'これください'
      },
      {
        'audio': 'sounds/restaurant/water_please.mp3',
        'title': '물 주세요',
        'subTitle': '오미즈쿠다사이',
        'jTitle': 'お水ください'
      },
      {
        'audio': 'sounds/restaurant/how_long.mp3',
        'title': '얼마나 기다려야 하나요?',
        'subTitle': '도레쿠라이 마타나이토 이케마센카?',
        'jTitle': 'どれくらい待たないといけませんか?'
      },
      {
        'audio': 'sounds/restaurant/restroom.mp3',
        'title': '화장실은 어디에요?',
        'subTitle': '토이레와 도코데스카?',
        'jTitle': 'トイレはどこですか?'
      },
      {
        'audio': 'sounds/restaurant/refill.mp3',
        'title': '이거 리필해주세요',
        'subTitle': '코레, 오카와리오네가이시마스',
        'jTitle': 'これ、おかわりお願いします?'
      },
      {
        'audio': 'sounds/restaurant/bill.mp3',
        'title': '계산서 주세요',
        'subTitle': '오카케이 오네가이시마스',
        'jTitle': 'お会計お願いします'
      },
      {
        'audio': 'sounds/restaurant/pay.mp3',
        'title': '계산해주세요',
        'subTitle': '오칸죠오 오네가이시마스',
        'jTitle': 'お勘定をお願いします'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '식당',
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
              children: restaurant.map((greeting) {
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
