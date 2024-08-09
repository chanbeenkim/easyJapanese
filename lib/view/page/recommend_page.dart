import 'package:easy/view/recommend_category/common_convenience_page.dart';
import 'package:easy/view/recommend_category/family_mart_page.dart';
import 'package:easy/view/recommend_category/lawson_page.dart';
import 'package:easy/view/recommend_category/seven_eleven_page.dart';
import 'package:flutter/material.dart';

class RecommendPage extends StatefulWidget {
  const RecommendPage({super.key});

  @override
  State<RecommendPage> createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // 탭의 개수
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            '추천',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: '공통'),
              Tab(text: '세븐일레븐'),
              Tab(text: '패밀리마트'),
              Tab(text: '로손'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CommonConveniencePage(),
            SevenElevenPage(),
            FamilyMartPage(),
            LawsonPage(),
          ],
        ),
      ),
    );
  }
}
