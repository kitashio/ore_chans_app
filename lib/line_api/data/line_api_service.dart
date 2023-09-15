import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/line_api/domain/line_message.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'line_api_service.g.dart';

final lineApiServiceProvider = Provider((ref) => LineApiService(Dio()));

// LINE Messaging APIのサービスを定義する
@RestApi(baseUrl: "https://api.line.me/v2/bot/")
abstract class LineApiService {
  factory LineApiService(Dio dio, {String baseUrl}) = _LineApiService;
  // LINEグループにメッセージを送信するメソッド
  @POST("message/push")
  Future<void> pushMessage(
      @Header("Authorization") String token, @Body() LinePushMessage message);
}
