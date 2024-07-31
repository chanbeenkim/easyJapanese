import 'package:audioplayers/audioplayers.dart';
import 'package:easy/view/widgets/japanese_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AirportPage extends ConsumerWidget {
  const AirportPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final audioPlayer = AudioPlayer();
    final List<Map<String, String>> airport = [
      {
        'audio': 'sounds/airport/korean.mp3',
        'title': '한국인입니다',
        'subTitle': '칸코쿠진데스',
        'jTitle': '韓国人です'
      },
      {
        'audio': 'sounds/airport/travel.mp3',
        'title': '여행으로 왔습니다',
        'subTitle': '료코오데 키마시타',
        'jTitle': '旅行で来ました'
      },
      {
        'audio': 'sounds/airport/business.mp3',
        'title': '사업차 왔습니다',
        'subTitle': '비지네스데 키마시타',
        'jTitle': 'ビジネスで来ました。'
      },
      {
        'audio': 'sounds/airport/travel_days.mp3',
        'title': '3박 4일 일정입니다',
        'subTitle': '산파쿠 욧카노 닛테에데스',
        'jTitle': '3泊4日の日程です'
      },
      {
        'audio': 'sounds/airport/exchange.mp3',
        'title': '환전해주세요',
        'subTitle': '료오가에시테쿠다사이',
        'jTitle': '両替してください'
      },
      {
        'audio': 'sounds/airport/how_much_exchange.mp3',
        'title': '수수료는 얼마에요?',
        'subTitle': '테스우료오와 이쿠라데스카?',
        'jTitle': '手数料はいくらですか？'
      },
      {
        'audio': 'sounds/airport/sim.mp3',
        'title': 'USIM칩을 구매하고 싶어요',
        'subTitle': '시무카아도오 코오뉴우시타이데스',
        'jTitle': 'USIMチップを購入したいです'
      },
      {
        'audio': 'sounds/airport/airport_bus.mp3',
        'title': '공항 버스는 어디에서 타요?',
        'subTitle': '쿠우코오바스와 도코데 노리마스카?',
        'jTitle': '空港バスはどこで乗りますか？'
      },
      {
        'audio': 'sounds/airport/airport_train.mp3',
        'title': '기차는 어디에서 타요?',
        'subTitle': '키샤와 도코데 노리마스카?',
        'jTitle': '汽車はどこで乗りますか？'
      },
      {
        'audio': 'sounds/airport/airport_taxi.mp3',
        'title': '택시는 어디에서 타요?',
        'subTitle': '타쿠시이와 도코데 노리마스카?',
        'jTitle': 'タクシーはどこで乗りますか？'
      },
      {
        'audio': 'sounds/airport/rent_car.mp3',
        'title': '렌터카는 어디에서 빌려요?',
        'subTitle': '렌타카아와 도코데 카리마스카',
        'jTitle': 'レンタカーはどこで借りますか？'
      },
      {
        'audio': 'sounds/airport/passport_lost.mp3',
        'title': '여권을 잃어버렸어요',
        'subTitle': '파스포오토오 나쿠시테시마이마시타',
        'jTitle': 'パスポートを失くしてしまいました'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '공항',
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
              children: airport.map((greeting) {
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
