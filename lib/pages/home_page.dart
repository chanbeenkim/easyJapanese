import 'package:easy/pages/hiragana/hiragana_page.dart';
import 'package:easy/pages/katakana/katakana_page.dart';
import 'package:easy/pages/widgets/japanese_home_card_widget.dart';
import 'package:easy/riverpod/progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progress = ref.watch(progressProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('쉽다 일본어'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            JapaneseHomeCardWidget(
                title: '히라가나 [hiragana]',
                date: DateTime.now(),
                progress: progress,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HiraganaPage()));
                }),
            const SizedBox(height: 24),
            JapaneseHomeCardWidget(
              title: '카타카나 [katakana]',
              date: DateTime.now(),
              progress: progress,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const KatakanaPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
