import 'package:easy/util/date_time_util.dart';
import 'package:easy/view/category/convenience_page.dart';
import 'package:easy/view/category/hello_page.dart';
import 'package:easy/view/category/hotel_page.dart';
import 'package:easy/view/category/landmark_page.dart';
import 'package:easy/view/category/restaurant_page.dart';
import 'package:easy/view/category/shopping_page.dart';
import 'package:easy/view/category/subway_page.dart';
import 'package:easy/view/category/taxi_page.dart';
import 'package:easy/view/category/transportation_page.dart';
import 'package:easy/view/widgets/japanese_home_card_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final dayOfWeek = DateTimeUtils.getFormattedDayOfWeek(now);
    final date = DateTimeUtils.getFormattedDate(now);
    final time = DateTimeUtils.getFormattedTime(now);

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
                    width: 8,
                  ),
                  JapaneseHomeCardWidget(
                    title: '호텔 🏢',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HotelPage()));
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  JapaneseHomeCardWidget(
                    title: '식당 🍣',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const RestaurantPage()));
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
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 8),
                  JapaneseHomeCardWidget(
                    title: '지하철 🚋',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SubwayPage()));
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
                    title: '택시 🚕',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const TaxiPage()));
                    },
                  ),
                  const SizedBox(width: 8),
                  JapaneseHomeCardWidget(
                    title: '위험 🚫',
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
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ShoppingPage()));
                    },
                  ),
                  const SizedBox(width: 8),
                  JapaneseHomeCardWidget(
                    title: '관광지 ⛩️',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LandmarkPage()));
                    },
                  ),
                  const SizedBox(width: 8),
                  JapaneseHomeCardWidget(
                    title: '온천 ♨️',
                    onTap: () {},
                  ),
                  const SizedBox(width: 8),
                  JapaneseHomeCardWidget(
                    title: '공항 ✈️',
                    onTap: () {},
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
