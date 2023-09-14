import 'package:freezed_annotation/freezed_annotation.dart';

part 'line_message.freezed.dart';
part 'line_message.g.dart';

// Freezedに必要なファイルを自動生成するコマンド
// flutter pub run build_runner watch --delete-conflicting-outputs

@freezed
class LinePushMessage with _$LinePushMessage {
  factory LinePushMessage({
    required String to,
    required List<LineMessageContent> messages,
  }) = _LinePushMessage;

  factory LinePushMessage.fromJson(Map<String, dynamic> json) =>
      _$LinePushMessageFromJson(json);
}

@freezed
class LineMessageContent with _$LineMessageContent {
  factory LineMessageContent({
    required String type,
    required String text,
  }) = _LineMessageContent;

  factory LineMessageContent.fromJson(Map<String, dynamic> json) =>
      _$LineMessageContentFromJson(json);
}
