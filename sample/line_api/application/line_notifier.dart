// import 'dart:async';

// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:ore_chans_app/line_api/application/key.dart';
// import 'package:ore_chans_app/line_api/data/line_api_service.dart';
// import 'package:ore_chans_app/line_api/domain/line_message.dart';

// // LINE Messaging APIを利用してメッセージを送信する状態を扱うAsyncNotifierを提供するProvider
// final lineNotifierProvider = AsyncNotifierProvider<LineNotifier, void>(LineNotifier.new);

// // LINE Messaging APIを利用してメッセージを送信する状態を扱うAsyncNotifier
// class LineNotifier extends AsyncNotifier<void> {
//   @override
//   FutureOr<void> build() {}
//   // メッセージを送信する。成功したらスナックバーを出す
//   Future<void> sendMessage(String text) async {
//     const token = "Bearer $LINE_TOKEN";// 別ファイルからLINE_TOKENを取得
//     final messageContent = LineMessageContent(type: "text", text: text);
//     final pushMessage =
//         LinePushMessage(to: "$USER_ID", messages: [messageContent]);// 別ファイルからUSER_IDを取得

//     state = const AsyncValue.loading();
//     try {
//       // retrofitを利用してLINE Messaging APIを呼び出す
//       await ref.read(lineApiServiceProvider).pushMessage(token, pushMessage);
//       state = const AsyncValue<void>.data(null);
//     } catch (e, stackTrace) {
//       state = AsyncError('送信失敗: ${e.toString()}', stackTrace);
//     }
//   }
// }