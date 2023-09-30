import 'package:freezed_annotation/freezed_annotation.dart';

part 'users.freezed.dart';
part 'users.g.dart';

// Freezedに必要なファイルを自動生成するコマンド
// flutter pub run build_runner watch --delete-conflicting-outputs

// JsonPlaceholderのAPIから取得したユーザー情報を格納するクラス
@freezed
class Users with _$Users {
  const factory Users({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String username,
    @Default('') String email,
  }) = _Users;

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
}
