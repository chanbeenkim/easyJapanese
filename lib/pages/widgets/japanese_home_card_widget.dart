import 'package:flutter/material.dart';

class JapaneseHomeCardWidget extends StatelessWidget {
  final String title;

  final Function() onTap;

  const JapaneseHomeCardWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'MinSans',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
