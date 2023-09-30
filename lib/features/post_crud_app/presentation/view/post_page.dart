// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:ore_chans_app/firebase/src/features/auth/application/auth_notifier.dart';
// import 'package:ore_chans_app/firebase/src/features/post_crud_app/application/post_provider.dart';
// import 'package:ore_chans_app/firebase/src/features/post_crud_app/domain/post/post.dart';
// import 'package:ore_chans_app/firebase/src/features/post_crud_app/presentation/state/post_notifier.dart';
// import 'package:ore_chans_app/utils/loading_component.dart';

// /// [ログイン後のページ]ここで、投稿と表示をする
// class PostPage extends ConsumerWidget {
//   const PostPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final bodyController = TextEditingController();
//     final editController = TextEditingController();
//     // エラー処理用のref.listen
//     ref.listen<AsyncValue<void>>(
//       postNotifierProvider,
//       (prev, next) {
//         // nullのデータが入ってきたら、スナックバーを表示する
//         // AsyncErrorが発生したら、isで判定して、データ型が同じになるので、スナックバーが出る。
//         if (next is AsyncError) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text(next.error.toString())),
//           );
//         }
//       },
//     );
//     // Streamで全てのデータを取得する。
//     final postAsyncValue = ref.watch(postStreamProvider);

//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.lock),
//             onPressed: () async {
//               await ref.read(authNotifierProvider.notifier).signOut();
//             },
//           ),
//         ],
//         title: Text('ボタン'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             const SizedBox(height: 20),
//             // ElevatedButton(
//             //   child: Text('アラートダイアログを表示'),
//             //   onPressed: () {
//             //     showDialog<void>(
//             //         context: context,
//             //         builder: (_) {
//             //           return AlertDialogComponent('test', '中身', () {
//             //             print('call');
//             //           });
//             //         });
//             //   },
//             // ),
//             SizedBox(
//               width: 300,
//               height: 50,
//               child: TextFormField(
//                 controller: bodyController,
//                 decoration: const InputDecoration(
//                   hintText: '本文',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//                 onPressed: () async {
//                   final now = DateTime.now();
//                   final post = Post(
//                     body: bodyController.text,
//                     createdAt: now,
//                     updatedAt: now,
//                   );
//                   await ref.read(postNotifierProvider.notifier).addPost(post);
//                 },
//                 child: Text('投稿する')),
//             Expanded(
//               child: postAsyncValue.when(
//                 data: (posts) {
//                   return ListView.builder(
//                     itemCount: posts.length,
//                     itemBuilder: (context, index) {
//                       final post = posts[index];
//                       return ListTile(
//                         title: Text(post.body),
//                         trailing: SizedBox(
//                           width: 120,
//                           child: Row(
//                             children: [
//                               IconButton(
//                                 icon: const Icon(Icons.edit),
//                                 onPressed: () async {
//                                   // ボタンを押すと編集用のダイアログが現れる
//                                   updateDialog(context, editController, posts,
//                                       index, ref);
//                                 },
//                               ),
//                               const SizedBox(width: 20),
//                               IconButton(
//                                 icon: const Icon(Icons.delete),
//                                 onPressed: () async {
//                                   final postId = posts[index].id;
//                                   await ref
//                                       .read(postNotifierProvider.notifier)
//                                       .deletePost(postId);
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   );
//                 },
//                 loading: () => const Center(
//                   child: LoadingComponent(),
//                 ),
//                 error: (error, stackTrace) => Center(
//                   child: Text(error.toString()),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // ダイアログをコンポーネント化
//   Future<void> updateDialog(
//       BuildContext context,
//       TextEditingController editController,
//       List<Post> posts,
//       int index,
//       WidgetRef ref) {
//     return showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('投稿'),
//           content: TextFormField(
//         controller: editController,
//             decoration: const InputDecoration(
//               hintText: '本文',
//               border: OutlineInputBorder(),
//             ),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () async {
//                 final now = DateTime.now();
//                 final post = Post(
//                   id: posts[index].id,
//                   body: editController.text,
//                   createdAt: now,
//                   updatedAt: now,
//                 );
//                 await ref.read(postNotifierProvider.notifier).updatePost(post);
//                 editController.clear();
//                 if (context.mounted) {
//                   Navigator.pop(context);
//                 }
//               },
//               child: const Text('投稿を更新'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
