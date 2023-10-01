import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ore_chans_app/features/post_crud_app/domain/converter/timestamp_converter.dart';

part 'love.freezed.dart';
part 'love.g.dart';

// flutter pub run build_runner watch --delete-conflicting-outputs

// loveのサブコレクション用のモデル
@freezed
class Love with _$Love {
  const factory Love({
    @Default('') String avatarImagePath,
    @Default('') String name,
    @Default(0) int deviation,
    @Default([]) List<Map<String, String>> questionList,
    @TimestampConverter() createdAt,
    @TimestampConverter() updatedAt,
  }) = _Love;
  const Love._();

  factory Love.fromJson(Map<String, Object?> json) => _$LoveFromJson(json);

  bool get isPassed => deviation >= 60;
}
