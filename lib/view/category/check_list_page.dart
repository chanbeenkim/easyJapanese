import 'dart:convert';

import 'package:easy/model/check_list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckListPage extends StatefulWidget {
  const CheckListPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CheckListPageState createState() => _CheckListPageState();
}

class _CheckListPageState extends State<CheckListPage> {
  List<CheckListItem> items = [
    CheckListItem("여권"),
    CheckListItem("항공권"),
    CheckListItem("각종바우처"),
    CheckListItem("비짓 제펜 웹"),
    CheckListItem("유심 or 와이파이"),
    CheckListItem("환전한 엔화"),
    CheckListItem("교통패스"),
    CheckListItem("해외 결제 카드"),
    CheckListItem("돼지코 충전기 or 어댑터"),
    CheckListItem("볼펜"),
    CheckListItem("지갑"),
    CheckListItem("보조배터리"),
    CheckListItem("동전지갑"),
    CheckListItem("이어폰"),
    CheckListItem("옷"),
    CheckListItem("잠옷"),
    CheckListItem("속옷 + 양말"),
    CheckListItem("모자"),
    CheckListItem("선글라스"),
    CheckListItem("수영복"),
    CheckListItem("목베개"),
    CheckListItem("휴지,물티슈"),
    CheckListItem("셀카봉 or 삼각대"),
    CheckListItem("세면도구"),
    CheckListItem("국제면허증"),
    CheckListItem("상비약"),
    CheckListItem("카메라"),
    CheckListItem("편한 신발 or 슬리퍼"),
    CheckListItem("여행자 보험"),
    CheckListItem("비상연락망(대사관 등)"),
  ];

  @override
  void initState() {
    super.initState();
    _loadChecklist();
  }

  Future<void> _loadChecklist() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString('checklist');
    if (jsonString != null) {
      setState(() {
        items = List<CheckListItem>.from(
          json.decode(jsonString).map((item) => CheckListItem.fromJson(item)),
        );
      });
    }
  }

  Future<void> _saveChecklist() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = json.encode(items.map((item) => item.toJson()).toList());
    await prefs.setString('checklist', jsonString);
  }

  void _clearChecklist() {
    setState(() {
      for (var item in items) {
        item.isChecked = false;
      }
    });
    _saveChecklist();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '체크리스트',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'MinSans',
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          TextButton(
            onPressed: _clearChecklist,
            child: const Text(
              'clear',
              style: TextStyle(
                color: Colors.black26,
                fontSize: 16,
                fontFamily: 'MinSans',
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 32),
            checkColor: Colors.white,
            activeColor: Colors.black,
            title: Text(
              items[index].name,
              style: TextStyle(
                color: items[index].isChecked ? Colors.black : Colors.black26,
                fontSize: 20,
                fontFamily: 'MinSans',
              ),
            ),
            value: items[index].isChecked,
            onChanged: (bool? value) {
              setState(() {
                items[index].isChecked = value ?? false;
              });
              _saveChecklist();
            },
          );
        },
      ),
    );
  }
}
