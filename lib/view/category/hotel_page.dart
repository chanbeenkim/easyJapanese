import 'package:audioplayers/audioplayers.dart';
import 'package:easy/view/widgets/japanese_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HotelPage extends ConsumerWidget {
  const HotelPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final audioPlayer = AudioPlayer();
    final List<Map<String, String>> hotel = [
      {
        'audio': 'sounds/hotel/check_in_please.mp3',
        'title': '체크인 부탁드립니다',
        'subTitle': '체크인 오네가이시마스',
        'jTitle': 'チェックインをお願いします'
      },
      {
        'audio': 'sounds/hotel/check_out_please.mp3',
        'title': '체크아웃 부탁드립니다',
        'subTitle': '체크아웃 오네가이시마스',
        'jTitle': 'チェックアウトをお願いします'
      },
      {
        'audio': 'sounds/hotel/can_i_leave_my_luggage.mp3',
        'title': '체크인 전에 짐을 맡아줄 수 있나요?',
        'subTitle': '체크인 마에니 니모츠오 아즈캇테 모라에마스카?',
        'jTitle': 'チェックイン前に荷物を預かってもらえますか？'
      },
      {
        'audio': 'sounds/hotel/is_there_a_room.mp3',
        'title': '빈 방 있나요?',
        'subTitle': '아키베야와 아리마스카?',
        'jTitle': '空き部屋はありますか？'
      },
      {
        'audio': 'sounds/hotel/is_there_a_better_room.mp3',
        'title': '좀 더 좋은 방 없나요?',
        'subTitle': '못또 이이 헤야와 아리마셍까?',
        'jTitle': 'もっといい部屋はありませんか?'
      },
      {
        'audio': 'sounds/hotel/view_is_good_room_please.mp3',
        'title': '전망이 좋은 방으로 부탁드립니다',
        'subTitle': '나가메노 이이 헤야오 오네가이시마스',
        'jTitle': '眺めのいい部屋をお願いします'
      },
      {
        'audio': 'sounds/hotel/what_is_the_accommodation_fee.mp3',
        'title': '숙박 요금은 얼마인가요?',
        'subTitle': '슈큐하쿠료-킹와 이쿠라데스까?',
        'jTitle': '宿泊料金はいくらですか?'
      },
      {
        'audio': 'sounds/hotel/what_is_this_fee.mp3',
        'title': '이건 무슨 요금인가요?',
        'subTitle': '코레와 난노 료-킨데스카?',
        'jTitle': 'これは何の料金ですか？'
      },
      {
        'audio': 'sounds/hotel/what_time_is_breakfast.mp3',
        'title': '조식은 몇시인가요?',
        'subTitle': '쵸-쇼쿠와 난지데스카?',
        'jTitle': '朝食は何時ですか?'
      },
      {
        'audio': 'sounds/hotel/is_there_a_wifi.mp3',
        'title': '와이파이 있나요?',
        'subTitle': '와이파이와 아리마스카?',
        'jTitle': 'ワイパイはありますか?'
      },
      {
        'audio': 'sounds/hotel/is_there_a_map.mp3',
        'title': '지도 있나요?',
        'subTitle': '치즈와 아리마스카?',
        'jTitle': '地図はありますか？'
      },
      {
        'audio': 'sounds/hotel/is_there_a_good_restaurant.mp3',
        'title': '근처에 괜찮은 식당 있나요?',
        'subTitle': '치카쿠니 이이 인쇼쿠텐와 아리마스카?',
        'jTitle': '近くにいい飲食店はありますか？'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '호텔',
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
              children: hotel.map((greeting) {
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
