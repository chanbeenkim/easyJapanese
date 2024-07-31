import 'package:audioplayers/audioplayers.dart';
import 'package:easy/view/widgets/japanese_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SubwayPage extends ConsumerWidget {
  const SubwayPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final audioPlayer = AudioPlayer();
    final List<Map<String, String>> subway = [
      {
        'audio': 'sounds/subway/where_is_subway.mp3',
        'title': '지하철역은 어디에 있나요?',
        'subTitle': '치카테츠노 에키와 도코니 아리마스카?',
        'jTitle': '地下鉄の駅はどこにありますか？'
      },
      {
        'audio': 'sounds/subway/where_is_ticket.mp3',
        'title': '매표소는 어디인가요?',
        'subTitle': '치켓토우리바와 도코데스카',
        'jTitle': 'チケット売り場はどこですか？'
      },
      {
        'audio': 'sounds/subway/metro_pass.mp3',
        'title': '메트로 패스 어디서 사나요?',
        'subTitle': '메토로파스와 도코데 카이마스카?',
        'jTitle': 'メトロパスはどこで買いますか？'
      },
      {
        'audio': 'sounds/subway/how_to_go_shinjuku.mp3',
        'title': '신주쿠행은 어디서 타나요?',
        'subTitle': '신주쿠이키와 도코데 노레마스카',
        'jTitle': '新宿行きはどこで乗れますか？'
      },
      {
        'audio': 'sounds/subway/how_to_go.mp3',
        'title': '여기는 어떻게 가요?',
        'subTitle': '코코와 도오 얏테이키마스카?',
        'jTitle': 'ここはどうやって行きますか?'
      },
      {
        'audio': 'sounds/subway/what_site.mp3',
        'title': '몇번 출구에 있나요?',
        'subTitle': '난반데구치니 아리마스카',
        'jTitle': '何番出口にありますか？'
      },
      {
        'audio': 'sounds/subway/subway_map.mp3',
        'title': '지하철 노선도를 주세요',
        'subTitle': '치카테츠노 로센즈 쿠다사이',
        'jTitle': '地下鉄の路線図、ください'
      },
      {
        'audio': 'sounds/subway/locker.mp3',
        'title': '짐 보관함 어디에 있어요?',
        'subTitle': '롯카아와 도코니 아리마스카',
        'jTitle': 'ロッカーはどこにありますか？'
      },
      {
        'audio': 'sounds/subway/next_station.mp3',
        'title': '다음 역은 어디에요?',
        'subTitle': '츠기노 에키와 도코데스카?',
        'jTitle': '次の駅はどこですか？'
      },
      {
        'audio': 'sounds/subway/ticket_lost.mp3',
        'title': '티켓을 잃어버렸어요',
        'subTitle': '치켓토오 나쿠시테시마이마시타',
        'jTitle': 'チケットをなくしてしまいました'
      },
      {
        'audio': 'sounds/subway/yellow_line.mp3',
        'title': '안전선 뒤로 물러나 주세요',
        'subTitle': '키이로이 센노 우치가와마데 사갓테쿠다사이',
        'jTitle': '黄色い線の内側まで下がってください'
      },
      {
        'audio': 'sounds/subway/subway_door.mp3',
        'title': '문에 기대지 마세요',
        'subTitle': '도아니 요리카카라나이데쿠다사이',
        'jTitle': 'ドアに寄りかからないでください'
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
              children: subway.map((greeting) {
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
