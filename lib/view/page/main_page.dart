import 'package:easy/util/date_time_util.dart';
import 'package:easy/view/category/hello_page.dart';
import 'package:easy/view/category/hotel_page.dart';
import 'package:easy/view/widgets/japanese_home_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final dayOfWeek = DateTimeUtils.getFormattedDayOfWeek(now);
    final date = DateTimeUtils.getFormattedDate(now);
    final time = DateTimeUtils.getFormattedTime(now);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$dayOfWeek, $date',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Text(
            time,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 64,
          ),
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
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HotelPage()));
                },
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
