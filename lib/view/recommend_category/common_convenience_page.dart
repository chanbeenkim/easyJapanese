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
      appBar: AppBar(
        title: const Text('Convenience Store Menu'),
      ),
      body: convenienceStoreAsyncValue.when(
        data: (docs) {
          return ListView(
            children: docs.map((document) {
              return ListTile(
                leading: Image.network(
                  document['imageUrl'],
                ),
                title: Text(
                  document['title'],
                  style: const TextStyle(fontSize: 40),
                ),
                subtitle: Text(document['subTitle']),
              );
            }).toList(),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
