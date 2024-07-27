import 'package:audioplayers/audioplayers.dart';
import 'package:easy/view/widgets/japanese_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HotelPage extends ConsumerWidget {
  const HotelPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final audioPlayer = AudioPlayer();
    final List<Map<String, String>> greetings = [
      {
        'audio': 'sounds/hotel/check_in_please.mp3',
        'title': '체크인 부탁드립니다',
        'subTitle': 'チェックインをお願いします'
      },
      {
        'audio': 'sounds/hotel/check_out_please.mp3',
        'title': '체크아웃 부탁드립니다',
        'subTitle': 'チェックアウトをお願いします'
      },
      {
        'audio': 'sounds/hotel/can_i_leave_my_luggage.mp3',
        'title': '체크인 전에 짐을 맡아줄 수 있나요?',
        'subTitle': 'チェックイン前に荷物を預かってもらえますか？'
      },
      {
        'audio': 'sounds/hotel/is_there_a_room.mp3',
        'title': '빈 방 있나요?',
        'subTitle': '空き部屋はありますか？'
      },
      {
        'audio': 'sounds/hotel/is_there_a_better_room.mp3',
        'title': '좀 더 좋은 방 없나요?',
        'subTitle': 'もっといい部屋はありませんか?'
      },
      {
        'audio': 'sounds/hotel/view_is_good_room_please.mp3',
        'title': '전망이 좋은 방으로 부탁드립니다',
        'subTitle': '眺めのいい部屋をお願いします'
      },
      {
        'audio': 'sounds/hotel/what_is_the_accommodation_fee.mp3',
        'title': '숙박 요금은 얼마인가요?',
        'subTitle': '宿泊料金はいくらですか?'
      },
      {
        'audio': 'sounds/hotel/what_is_this_fee.mp3',
        'title': '이건 무슨 요금인가요?',
        'subTitle': 'これは何の料金ですか？'
      },
      {
        'audio': 'sounds/hotel/what_time_is_breakfast.mp3',
        'title': '조식은 몇시인가요?',
        'subTitle': '朝食は何時ですか?'
      },
      {
        'audio': 'sounds/hotel/is_there_a_wifi.mp3',
        'title': '와이파이 있나요?',
        'subTitle': 'ワイパイはありますか?'
      },
      {
        'audio': 'sounds/hotel/is_there_a_map.mp3',
        'title': '지도 있나요?',
        'subTitle': '地図はありますか？'
      },
      {
        'audio': 'sounds/hotel/is_there_a_good_restaurant.mp3',
        'title': '근처에 괜찮은 식당 있나요?',
        'subTitle': '近くにいい飲食店はありますか？'
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
              children: greetings.map((greeting) {
                return Column(
                  children: [
                    JapaneseCardWidget(
                      japaneseAudio: greeting['audio']!,
                      title: greeting['title']!,
                      subTitle: greeting['subTitle']!,
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
