import 'package:flutter/material.dart';

class CheckListPage extends StatefulWidget {
  const CheckListPage({super.key});

  @override
  _CheckListPageState createState() => _CheckListPageState();
}

class _CheckListPageState extends State<CheckListPage> {
  List<Map<String, dynamic>> items = [
    {"name": "여권", "isChecked": false},
    {"name": "항공권", "isChecked": false},
    {"name": "숙소 예약 확인서", "isChecked": false},
    {"name": "환전한 엔화", "isChecked": false},
    {"name": "여행자 보험", "isChecked": false},
    {"name": "충전기 및 어댑터", "isChecked": false},
    {"name": "필수 약품", "isChecked": false},
    {"name": "우산 또는 우비", "isChecked": false},
    {"name": "카메라", "isChecked": false},
    {"name": "편한 신발", "isChecked": false},
  ];

  void clearChecklist() {
    setState(() {
      for (var item in items) {
        item["isChecked"] = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '체크리스트',
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'MinSans',
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          TextButton(
            onPressed: clearChecklist,
            child: const Text(
              'clear',
              style: TextStyle(
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
            title: Text(items[index]["name"]),
            value: items[index]["isChecked"],
            onChanged: (bool? value) {
              setState(() {
                items[index]["isChecked"] = value;
              });
            },
          );
        },
      ),
    );
  }
}
