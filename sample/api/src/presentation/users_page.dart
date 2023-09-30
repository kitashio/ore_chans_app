import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../application/users_provider.dart';

/// [JsonPlaceholderから取得したデータを表示するページ]
class UsersPage extends ConsumerWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /*
    APIからのデータはFutureProviderで取得して、watchして状態を監視する.
    データの型はAsyncValueになる。StreamProviderでやっても同じ.
    */
    final users = ref.watch(usersFutureProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('ユーザー 一覧'),
        ),
        // FutureProviderの状態によって表示を変える
        body: users.when(
          // whenメソッドで状態を監視
          data: (user) {
            // データが取得できた場合はListView.builderで表示
            return ListView.builder(
              itemCount: user.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 100,
                  child: Card(
                    color: Colors.blue[100],
                    child: ListTile(
                      title: Row(
                        children: [
                          Text(user[index].id.toString()),
                          const SizedBox(width: 10),
                          Text(user[index].name),
                        ],
                      ),
                      subtitle: Row(
                        children: [
                          Text(user[index].username),
                          const SizedBox(width: 10),
                          Text(user[index].email),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          // エラーが発生した場合はエラーを表示
          error: (_, __) => const Center(child: Text('エラーが発生しました')),
          // データが取得できるまでローディングを表示
          loading: () => const Center(child: CircularProgressIndicator()),
        ));
  }
}
