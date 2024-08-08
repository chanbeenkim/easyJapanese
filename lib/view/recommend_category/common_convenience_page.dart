import 'package:easy/service/common_convenience_service_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommonConveniencePage extends ConsumerWidget {
  const CommonConveniencePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final convenienceStoreAsyncValue =
        ref.watch(commonConvenienceServiceProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          '공통',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
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
                    const SizedBox(height: 8),
                    Text(
                      document['title'],
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      document['subTitle'],
                      style: const TextStyle(fontSize: 12),
                    ),
                    Text(
                      document['price'],
                      style: const TextStyle(fontSize: 12),
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
