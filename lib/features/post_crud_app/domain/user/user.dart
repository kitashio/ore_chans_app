import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ore_chans_app/features/post_crud_app/domain/converter/timestamp_converter.dart';

part 'user.freezed.dart';
part 'user.g.dart';

// flutter pub run build_runner watch --delete-conflicting-outputs
// ユーザーのコレクション用のモデル
@freezed
class User with _$User {
  const factory User({
    @Default('') String id, // uidを保存する
    @Default('') String name,
    @Default(0) int score,
    @TimestampConverter() createdAt,
    @TimestampConverter() updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
