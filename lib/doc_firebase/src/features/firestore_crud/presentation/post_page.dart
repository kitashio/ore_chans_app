import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/doc_firebase/src/features/auth/application/auth_notifier.dart';
import 'package:ore_chans_app/doc_firebase/src/features/post_crud_app/data/post_provider.dart';
import 'package:ore_chans_app/doc_firebase/src/features/post_crud_app/domain/post/post.dart';
import 'package:ore_chans_app/doc_firebase/src/features/post_crud_app/presentation/state/post_notifier.dart';

/// [ログイン後のページ]ここで、投稿と表示をする
class PostPage extends ConsumerWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bodyController = TextEditingController();
    // エラー処理用のref.listen
    ref.listen<AsyncValue<void>>(
      postNotifierProvider,
      (prev, next) {
        // nullのデータが入ってきたら、スナックバーを表示する
        // AsyncErrorが発生したら、isで判定して、データ型が同じになるので、スナックバーが出る。
        if (next is AsyncError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(next.error.toString())),
          );
        }
      },
    );
    // Streamで全てのデータを取得する。
    final postAsyncValue = ref.watch(postStreamProvider);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.lock),
            onPressed: () async {
              await ref.read(authNotifierProvider.notifier).signOut();
            },
          ),
        ],
        title: const Text('Post'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: TextFormField(
                controller: bodyController,
                decoration: const InputDecoration(
                  hintText: '本文',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () async {
                  final now = DateTime.now();
                  final post = Post(
                    body: bodyController.text,
                    createdAt: now,
                    updatedAt: now,
                  );
                  await ref.read(postNotifierProvider.notifier).addPost(post);
                },
                child: const Text('投稿')),
            Expanded(
              child: postAsyncValue.when(
                data: (posts) {
                  return ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      final post = posts[index];
                      return ListTile(
                        title: Text(post.body),
                        trailing: SizedBox(
                          width: 120,
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () async {
                                  // ボタンを押すと編集用のダイアログが現れる
                                  updateDialog(context, bodyController, posts,
                                      index, ref);
                                },
                              ),
                              const SizedBox(width: 20),
                              IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () async {
                                  final postId = posts[index].id;
                                  await ref
                                      .read(postNotifierProvider.notifier)
                                      .deletePost(postId);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (error, stackTrace) => Center(
                  child: Text(error.toString()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ダイアログをコンポーネント化
  Future<void> updateDialog(
      BuildContext context,
      TextEditingController bodyController,
      List<Post> posts,
      int index,
      WidgetRef ref) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('投稿'),
          content: TextFormField(
            controller: bodyController,
            decoration: const InputDecoration(
              hintText: '本文',
              border: OutlineInputBorder(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () async {
                final post = Post(
                  id: posts[index].id,
                  body: bodyController.text,
                  createdAt: DateTime.now(),
                  updatedAt: DateTime.now(),
                );
                await ref.read(postNotifierProvider.notifier).updatePost(post);
                bodyController.clear();
                if (context.mounted) {
                  Navigator.pop(context);
                }
              },
              child: const Text('投稿を更新'),
            ),
          ],
        );
      },
    );
  }
}
