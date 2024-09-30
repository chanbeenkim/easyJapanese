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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final dayOfWeek = DateTimeUtils.getFormattedDayOfWeek(now);
    final date = DateTimeUtils.getFormattedDate(now);
    final time = DateTimeUtils.getFormattedTime(now);

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   // actions: [
      //   //   IconButton(
      //   //     onPressed: () {
      //   //       Navigator.of(context).push(
      //   //           MaterialPageRoute(builder: (context) => const SettingPage()));
      //   //     },
      //   //     icon: const Icon(
      //   //       Icons.settings,
      //   //     ),
      //   //   ),
      //   // ],
      // ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              _dateTimeDisplay(dayOfWeek, date, time),
              const SizedBox(
                height: 24,
              ),
              Image.asset(
                'assets/images/travel.png',
                width: 200,
              ),
              const SizedBox(
                height: 24,
              ),
              _cardRow([
                _card('인사 🤚', const HelloPage(), context),
                _card('호텔 🏢', const HotelPage(), context),
                _card('식당 🍣', const RestaurantPage(), context),
              ]),
              const SizedBox(height: 16),
              _cardRow([
                _card('공항 ✈️', const AirportPage(), context),
                _card('기차 🚅', const TransportationPage(), context),
                _card('지하철 🚋', const SubwayPage(), context),
              ]),
              const SizedBox(height: 16),
              _cardRow([
                _card('택시 🚕', const TaxiPage(), context),
                _card('편의점 🍙', const ConveniencePage(), context),
                _card('쇼핑 🛍️', const ShoppingPage(), context),
              ]),
              const SizedBox(height: 16),
              _cardRow([
                _card('관광지 ⛩️', const LandmarkPage(), context),
                _card('응급 🚨', const EmergencyPage(), context),
                _card('준비물 💡', const CheckListPage(), context),
              ]),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dateTimeDisplay(String dayOfWeek, String date, String time) {
    return Column(
      children: [
        Text(
          '$dayOfWeek, $date',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Text(
          time,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Widget _cardRow(List<Widget> cards) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
          cards.expand((card) => [card, const SizedBox(width: 8)]).toList()
            ..removeLast(),
    );
  }

  Widget _card(String title, Widget page, BuildContext context) {
    return JapaneseHomeCardWidget(
      title: title,
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => page)),
    );
  }
}
