// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LinePushMessage _$$_LinePushMessageFromJson(Map<String, dynamic> json) =>
    _$_LinePushMessage(
      to: json['to'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => LineMessageContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LinePushMessageToJson(_$_LinePushMessage instance) =>
    <String, dynamic>{
      'to': instance.to,
      'messages': instance.messages,
    };

_$_LineMessageContent _$$_LineMessageContentFromJson(
        Map<String, dynamic> json) =>
    _$_LineMessageContent(
      type: json['type'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_LineMessageContentToJson(
        _$_LineMessageContent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
    };
