import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Switch(
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value;
                    context.setLocale(context.locale.languageCode == 'en'
                        ? const Locale('ko')
                        : const Locale('en'));
                  });
                })
          ],
        ),
      ),
    );
  }
}
