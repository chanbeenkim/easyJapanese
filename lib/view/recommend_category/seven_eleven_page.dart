import 'package:easy/service/seven_eleven_service_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SevenElevenPage extends ConsumerWidget {
  const SevenElevenPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final convenienceStoreAsyncValue = ref.watch(sevenElevenServiceProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body: convenienceStoreAsyncValue.when(
        data: (docs) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 한 행에 2개의 항목을 표시
              childAspectRatio: 0.75, // 항목의 가로 세로 비율 조정
            ),
            itemCount: docs.length,
            itemBuilder: (context, index) {
              final document = docs[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      document['imageUrl'],
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.2,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      document['title'],
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      document['subTitle'],
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      document['price'],
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
