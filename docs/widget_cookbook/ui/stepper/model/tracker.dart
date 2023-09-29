// tracker_model.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracker.freezed.dart';
part 'tracker.g.dart';

// ファイルを自動生成するコマンド
// flutter pub run build_runner build --delete-conflicting-outputs

// タイムスタンプをDateTime型に変換するコンバーター
class TimestampConverter implements JsonConverter<DateTime?, Timestamp?> {
  const TimestampConverter();

  @override
  DateTime? fromJson(Timestamp? json) => json?.toDate();

  @override
  Timestamp? toJson(DateTime? object) =>
      object == null ? null : Timestamp.fromDate(object);
}

// Freezedで作成するモデルクラス
@freezed
class Tracker with _$Tracker {
  const factory Tracker({
    @Default('') String location,
    @TimestampConverter() DateTime? createdAt,
  }) = _Tracker;

  factory Tracker.fromJson(Map<String, dynamic> json) =>
      _$TrackerFromJson(json);
}
