import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/api_service.dart';

// Dioのインスタンスを生成するProvider
final apiServiceProvider = Provider((ref) => ApiService(Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 10), // 接続のタイムアウト
    receiveTimeout: const Duration(seconds: 10), // データの受信のタイムアウト
    contentType: "application/json"))));

/*
[補足事項]
タイムアウトとは、通信が完了するまでにかかる時間のことです。
接続のタイムアウトは、サーバーに接続するまでにかかる時間のことです。
データの受信のタイムアウトは、サーバーからデータを受信するまでにかかる時間のことです。
もし、タイムアウトが発生した場合は、エラーが発生します。
*/

// JsonPlaceholderのAPIを叩いてユーザー情報を取得するProvider
final usersFutureProvider = FutureProvider((ref) async {
  try {
    final apiService = ref.read(apiServiceProvider);
    return apiService.getUsers();
  } catch (e) {
    throw Exception(e);
  }
});
