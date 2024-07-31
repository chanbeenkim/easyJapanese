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
        'audio': 'sounds/shopping/look_around.mp3',
        'title': '좀 둘러봐도 될까요?',
        'subTitle': '초쯔토 미테모 이이데스카?',
        'jTitle': 'ちょっと見てもいいですか?'
      },
      {
        'audio': 'sounds/shopping/that_look.mp3',
        'title': '저거 보여주세요',
        'subTitle': '아레오 미세테쿠다사이요',
        'jTitle': 'あれを見せてくださいよ'
      },
      {
        'audio': 'sounds/shopping/famous.mp3',
        'title': '가장 인기 있는 건 어떤 거예요?',
        'subTitle': '이치반 닌키가 아루노와 도레데스카?',
        'jTitle': 'いちばん人気があるのは、どれですか?'
      },
      {
        'audio': 'sounds/shopping/latest.mp3',
        'title': '신상은 어떤 거예요?',
        'subTitle': '신쇼오힌와 도레데스카?',
        'jTitle': '新商品はどれですか？'
      },
      {
        'audio': 'sounds/shopping/another_color.mp3',
        'title': '다른 색상도 보여주세요',
        'subTitle': '호카노 이로모 미세테이타다케마스카',
        'jTitle': '他の色も見せていただけますか'
      },
      {
        'audio': 'sounds/shopping/another_size.mp3',
        'title': '다른 사이즈도 있나요?',
        'subTitle': '호카노 사이즈모 아리마스카?',
        'jTitle': '他のサイズもありますか？'
      },
      {
        'audio': 'sounds/shopping/can_i_try.mp3',
        'title': '입어봐도 되나요?',
        'subTitle': '시차쿠시테모 이이데스카?',
        'jTitle': '試着してもいいですか？'
      },
      {
        'audio': 'sounds/shopping/present.mp3',
        'title': '선물 포장해주세요',
        'subTitle': '오쿠리모노노 호오소오오 시테쿠다사이',
        'jTitle': '贈り物の包装をしてください'
      },
      {
        'audio': 'sounds/shopping/how_much.mp3',
        'title': '이건 얼마인가요?',
        'subTitle': '코레와 이쿠라데스카?',
        'jTitle': 'これはいくらですか？'
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
      {
        'audio': 'sounds/shopping/refund.mp3',
        'title': '환불해주세요',
        'subTitle': '하라이모도시오 오네가이시마스',
        'jTitle': '払い戻しをお願いします'
      },
      {
        'audio': 'sounds/shopping/change.mp3',
        'title': '교환해주세요',
        'subTitle': '코오칸 오네가이시마스',
        'jTitle': '交換お願いします'
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
