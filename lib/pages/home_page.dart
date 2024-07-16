import 'package:easy/pages/hiragana/hello_page.dart';
import 'package:easy/pages/widgets/japanese_home_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/travel.png',
            scale: 4,
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              JapaneseHomeCardWidget(
                title: '인사 🤚',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HelloPage()));
                },
              ),
              const SizedBox(
                width: 16,
              ),
              JapaneseHomeCardWidget(
                title: '호텔 🏨',
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              JapaneseHomeCardWidget(
                title: '식당 🍙',
                onTap: () {},
              ),
              const SizedBox(width: 16),
              JapaneseHomeCardWidget(
                title: '교통 🚅',
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              JapaneseHomeCardWidget(
                title: '쇼핑 🛍️',
                onTap: () {},
              ),
              const SizedBox(width: 16),
              JapaneseHomeCardWidget(
                title: '명소 🏔️',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
