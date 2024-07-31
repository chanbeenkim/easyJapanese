import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:easy/util/date_time_util.dart';
import 'package:easy/view/category/airport_page.dart';
import 'package:easy/view/category/convenience_page.dart';
import 'package:easy/view/category/emergency_page.dart';
import 'package:easy/view/category/hello_page.dart';
import 'package:easy/view/category/hotel_page.dart';
import 'package:easy/view/category/landmark_page.dart';
import 'package:easy/view/category/restaurant_page.dart';
import 'package:easy/view/category/shopping_page.dart';
import 'package:easy/view/category/subway_page.dart';
import 'package:easy/view/category/taxi_page.dart';
import 'package:easy/view/category/transportation_page.dart';
import 'package:easy/view/category/check_list_page.dart';
import 'package:easy/view/widgets/japanese_home_card_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final AudioPlayer audioPlayer = AudioPlayer();
  final List<String> sounds = [
    'sounds/greetings/bye.mp3',
    'sounds/greetings/no.mp3',
    'sounds/greetings/yes.mp3',
  ];
  final List<String> texts = [
    '바이',
    '노우',
    '예스',
  ];

  String? currentText;

  Future<void> playRandomSound() async {
    final random = Random();
    final index = random.nextInt(sounds.length);
    final sound = sounds[index];
    final text = texts[index];

    await audioPlayer.stop();
    await audioPlayer.play(AssetSource(sound));

    setState(() {
      currentText = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final dayOfWeek = DateTimeUtils.getFormattedDayOfWeek(now);
    final date = DateTimeUtils.getFormattedDate(now);
    final time = DateTimeUtils.getFormattedTime(now);

    @override
    void dispose() {
      audioPlayer.dispose();
      super.dispose();
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 64,
              ),
              Text(
                '$dayOfWeek, $date',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text(
                time,
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 64,
              ),
              if (currentText != null) ...[
                const SizedBox(height: 16), // 텍스트 위에 여백 추가
                Text(
                  currentText!,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
              GestureDetector(
                onTap: playRandomSound,
                child: Image.asset(
                  'assets/images/travel.png',
                  scale: 4,
                ),
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
                  const SizedBox(width: 8),
                  JapaneseHomeCardWidget(
                    title: '호텔 🏢',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HotelPage()));
                    },
                  ),
                  const SizedBox(width: 8),
                  JapaneseHomeCardWidget(
                    title: '식당 🍣',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const RestaurantPage()));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  JapaneseHomeCardWidget(
                    title: '공항 ✈️',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AirportPage()));
                    },
                  ),
                  const SizedBox(width: 8),
                  JapaneseHomeCardWidget(
                    title: '기차 🚅',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const TransportationPage()));
                    },
                  ),
                  const SizedBox(width: 8),
                  JapaneseHomeCardWidget(
                    title: '지하철 🚋',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SubwayPage()));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  JapaneseHomeCardWidget(
                    title: '택시 🚕',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const TaxiPage()));
                    },
                  ),
                  const SizedBox(width: 8),
                  JapaneseHomeCardWidget(
                    title: '편의점 🍙',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ConveniencePage()));
                    },
                  ),
                  const SizedBox(width: 8),
                  JapaneseHomeCardWidget(
                    title: '쇼핑 🛍️',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ShoppingPage()));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  JapaneseHomeCardWidget(
                    title: '관광지 ⛩️',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LandmarkPage()));
                    },
                  ),
                  const SizedBox(width: 8),
                  JapaneseHomeCardWidget(
                    title: '응급 🚨',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const EmergencyPage()));
                    },
                  ),
                  const SizedBox(width: 8),
                  JapaneseHomeCardWidget(
                    title: '준비물 💡',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CheckListPage()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: 'food')
        ],
      ),
    );
  }
}
