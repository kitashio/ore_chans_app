import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ore_chans_app/firebase/src/features/post_crud_app/domain/converter/timestamp_converter.dart';

part 'love.freezed.dart';
part 'love.g.dart';

// flutter pub run build_runner watch --delete-conflicting-outputs

// loveのサブコレクション用のモデル
@freezed
class Love with _$Love {
  const factory Love({
    @Default('') String id,
    @Default('') String avaterImage,
    @Default('') String name,
    @Default(0) int score,
    @TimestampConverter() createdAt,
    @TimestampConverter() updatedAt,
  }) = _Love;

  factory Love.fromJson(Map<String, Object?> json)
      => _$LoveFromJson(json);
}