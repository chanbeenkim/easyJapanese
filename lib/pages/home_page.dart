import 'package:easy/pages/hiragana_page.dart';
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
            _jCard(context, '히라가나 [hiragana]', DateTime.now(), progress,
                onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HiraganaPage()));
            }),
            const SizedBox(height: 24),
            _jCard(context, '카타카나 [katakana]', DateTime.now(), progress,
                onTap: () {}),
          ],
        ),
      ),
    );
  }

  Widget _jCard(
      BuildContext context, String title, DateTime date, double progress,
      {required Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.8),
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${date.hour}시간 전',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 10,
                        child: LinearProgressIndicator(
                          value: progress,
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${(progress * 10).toInt()}/10',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
