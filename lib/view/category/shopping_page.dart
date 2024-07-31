import 'package:audioplayers/audioplayers.dart';
import 'package:easy/view/widgets/japanese_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShoppingPage extends ConsumerWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final audioPlayer = AudioPlayer();
    final List<Map<String, String>> shopping = [
      {
        'audio': 'sounds/shopping/where_is_department.mp3',
        'title': '백화점은 어디있나요?',
        'subTitle': '데파아토와 도코니 아리마스카?',
        'jTitle': 'デパートはどこにありますか？'
      },
      {
        'audio': 'sounds/shopping/donkihote.mp3',
        'title': '돈키호테는 어디있나요?',
        'subTitle': '돈키호오테와 도코니 아리마스카',
        'jTitle': 'ドンキホーテはどこにありますか？'
      },
      {
        'audio': 'sounds/shopping/tax_free.mp3',
        'title': '면세점은 몇층에 있나요?',
        'subTitle': '멘제에텐와 난가이니 아리마스카?',
        'jTitle': '免税店は何階にありますか?'
      },
      {
        'audio': 'sounds/shopping/store_open.mp3',
        'title': '매장 오픈 시간은 언제인가요?',
        'subTitle': '카이텐지칸와 이츠데스카',
        'jTitle': '開店時間はいつですか？'
      },
      {
        'audio': 'sounds/shopping/store_close.mp3',
        'title': '마감 시간은 언제인가요?',
        'subTitle': '시메키리와 이츠데스카?',
        'jTitle': '締め切りはいつですか？'
      },
      {
        'audio': 'sounds/shopping/pay.mp3',
        'title': '계산해주세요',
        'subTitle': '오칸조오 오네가이시마스',
        'jTitle': 'お勘定お願いします'
      },
      {
        'audio': 'sounds/shopping/tax_free_please.mp3',
        'title': '면세 가능한가요?',
        'subTitle': '멘제에와 카노오데스카?',
        'jTitle': '免税は可能ですか？'
      },
      {
        'audio': 'sounds/shopping/card.mp3',
        'title': '카드로 가능한가요?',
        'subTitle': '카아도데 데키마스카?',
        'jTitle': 'カードでできますか？'
      },
      {
        'audio': 'sounds/shopping/receipt.mp3',
        'title': '영수증 주세요',
        'subTitle': '료오슈우쇼쿠다사이',
        'jTitle': '領収書ください'
      },
      {
        'audio': 'sounds/shopping/no_receipt.mp3',
        'title': '영수증은 필요없습니다',
        'subTitle': '료오슈우쇼와 이리마세',
        'jTitle': '領収書は要りません'
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
              children: shopping.map((greeting) {
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
