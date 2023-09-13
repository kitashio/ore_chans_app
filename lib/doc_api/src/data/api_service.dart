import 'package:dio/dio.dart';
import 'package:ore_chans_app/doc_api/src/domain/users.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

/*
- retrofitの使い方
- 通信を行う処理を書いた抽象クラスを定義する。
- メソッドを書く際には、@GETや@POSTなどのアノテーションをつける。
- 自動生成のコマンドを実行するといい感じでロジックを作ってくれるようだ。

- 生成コマンド
  flutter pub run build_runner build --delete-conflicting-outputs
*/
@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('/users')
  Future<List<Users>> getUsers();
}