import 'package:easy/view/category/airport_page.dart';
import 'package:easy/view/category/convenience_page.dart';
import 'package:easy/view/category/emergency_page.dart';
import 'package:easy/view/category/hotel_page.dart';
import 'package:easy/view/category/landmark_page.dart';
import 'package:easy/view/category/restaurant_page.dart';
import 'package:easy/view/category/shopping_page.dart';
import 'package:easy/view/category/subway_page.dart';
import 'package:easy/view/category/taxi_page.dart';
import 'package:easy/view/category/transportation_page.dart';
import 'package:easy/view/category/check_list_page.dart';
import 'package:easy/view/recommend_category/common_convenience_page.dart';
import 'package:easy/view/widgets/japanese_home_card_widget.dart';
import 'package:flutter/material.dart';

class RecommendPage extends StatefulWidget {
  const RecommendPage({super.key});

  @override
  State<RecommendPage> createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/cat.gif', scale: 2),
              _cardRow([
                _card('로손 🤚', const CommonConveniencePage(), context),
                _card('세븐일레븐 🏢', const HotelPage(), context),
                _card('공통 🍣', const RestaurantPage(), context),
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
            ],
          ),
        ),
      ),
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
