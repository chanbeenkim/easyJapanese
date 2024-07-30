import 'package:audioplayers/audioplayers.dart';
import 'package:easy/view/widgets/japanese_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransportationPage extends ConsumerWidget {
  const TransportationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final audioPlayer = AudioPlayer();
    final List<Map<String, String>> greetings = [
      {
        'audio': 'sounds/transportation/where_is_here.mp3',
        'title': '여기는 어디인가요?',
        'subTitle': '고코와 도코데스카?',
        'jTitle': 'ここはどこですか?'
      },
      {
        'audio': 'sounds/transportation/ticket_office.mp3',
        'title': '매표소는 어디인가요?',
        'subTitle': '치켓토우리바와 도코데스카?',
        'jTitle': 'チケット売り場はどこですか?'
      },
      {
        'audio': 'sounds/transportation/fast_train.mp3',
        'title': '급행으로 부탁합니다',
        'subTitle': '큐우코오데 오네가이시마스',
        'jTitle': '急行でお願いします'
      },
      {
        'audio': 'sounds/transportation/give_me_ticket_tokyo.mp3',
        'title': '도쿄행 편도 한 장 주세요',
        'subTitle': '토오쿄오이키노 카타미치 이치마이쿠다사이',
        'jTitle': '東京行きの片道、1枚ください'
      },
      {
        'audio': 'sounds/transportation/give_me_ticket_round_tokyo.mp3',
        'title': '도쿄행 왕복 한 장 주세요',
        'subTitle': '토오쿄오이키노 오오후쿠오 이치마이 오네가이시마스',
        'jTitle': '東京行きの往復を一枚お願いします'
      },
      {
        'audio': 'sounds/transportation/to_osaka_two.mp3',
        'title': '오사카행 2장 주세요',
        'subTitle': '오오사카이키오 니마이 오네가이시마스',
        'jTitle': '大阪行きを2枚お願いします'
      },
      {
        'audio': 'sounds/transportation/how_long.mp3',
        'title': '얼마나 걸리나요?',
        'subTitle': '도노 쿠라이 카카리마스카?',
        'jTitle': 'どの くらい かかりますか?'
      },
      {
        'audio': 'sounds/transportation/what_time_first_train.mp3',
        'title': '첫차는 몇시에요?',
        'subTitle': '시하츠와 난지데스카',
        'jTitle': '始発は何時ですか？'
      },
      {
        'audio': 'sounds/transportation/ticket_cancel.mp3',
        'title': '이 표를 취소할 수 있을까요?',
        'subTitle': '코노 킷푸 캬세루데키마스카',
        'jTitle': 'この切符、キャンセルできますか'
      },
      {
        'audio': 'sounds/transportation/what_site_tokyo.mp3',
        'title': '도쿄행은 몇 번 홈에서 출발해요?',
        'subTitle': '토오쿄오이키와 난반호오무데스카',
        'jTitle': '東京行きは何番ホームですか'
      },
      {
        'audio': 'sounds/transportation/site_start.mp3',
        'title': '4번 홈에서 출발해요',
        'subTitle': '욘반호오무카라 슈쯔파츠시마스',
        'jTitle': '4番ホームから出発します'
      },
      {
        'audio': 'sounds/transportation/this_is_tokyo.mp3',
        'title': '이거 도쿄행이에요?',
        'subTitle': '코레 토오쿄오이키데스카',
        'jTitle': 'これ、東京行きですか?'
      },
      {
        'audio': 'sounds/transportation/when_go.mp3',
        'title': '언제 출발해요?',
        'subTitle': '이츠 슈쯔파츠데스카?',
        'jTitle': 'いつ出発ですか?'
      },
      {
        'audio': 'sounds/transportation/sorry_my_seat.mp3',
        'title': '실례합니다 여기는 제 자리에요',
        'subTitle': '스미마세 코코와 와타시노 세키데스',
        'jTitle': 'すみません ここは私の席です?'
      },
      {
        'audio': 'sounds/transportation/where_here_station.mp3',
        'title': '이번 역은 무슨 역인가요?',
        'subTitle': '콘도노 에키와 난노 에키데스카',
        'jTitle': '今度の駅は何の駅ですか?'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '교통',
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
