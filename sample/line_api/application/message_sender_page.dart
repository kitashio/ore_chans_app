// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// /// [LINEグループへのメッセージを送信する画面]
// class MessageSenderPage extends ConsumerWidget {
//   const MessageSenderPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // LINEグループにメッセージを送信するコントローラー
//     final _controller = TextEditingController();
//     // AsyncNotifierから渡された状態によってスナックバーを表示する
//     ref.listen<AsyncValue<void>>(
//       lineNotifierProvider,
//       (prev, next) {
//         // エラーが発生したらSnackBarを表示する
//         if (next is AsyncError) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text("Failed to send message: ${next.error}")),
//           );
//           // メッセージが送信されたらSnackBarを表示する
//         } else if (next is AsyncData) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text("Message sent successfully.")),
//           );
//         }
//       },
//     );
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green[500],
//         title: const Text("LINEグループにMSGを送信"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           children: [
//             IconButton(
//                 onPressed: () async {
//                   final text = _controller.text;
//                   if (text.isEmpty) {
//                     return;
//                   }
//                   // 送信ボタンを押したらメッセージを送信する
//                   await ref
//                       .read(lineNotifierProvider.notifier)
//                       .sendMessage(text);
//                   _controller.clear();
//                 },
//                 icon: const Icon(Icons.send)),
//             SizedBox(
//               width: 300,
//               height: 50,
//               child: TextField(
//                 controller: _controller,
//                 decoration: const InputDecoration(
//                   labelText: "メッセージを入力してください",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
