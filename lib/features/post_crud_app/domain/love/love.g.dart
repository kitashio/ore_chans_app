// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'love.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Love _$$_LoveFromJson(Map<String, dynamic> json) => _$_Love(
      avatarImagePath: json['avatarImagePath'] as String? ?? '',
      name: json['name'] as String? ?? '',
      deviation: json['deviation'] as int? ?? 0,
      questionList: (json['questionList'] as List<dynamic>?)
              ?.map((e) => Map<String, String>.from(e as Map))
              .toList() ??
          const [],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$$_LoveToJson(_$_Love instance) => <String, dynamic>{
      'avatarImagePath': instance.avatarImagePath,
      'name': instance.name,
      'deviation': instance.deviation,
      'questionList': instance.questionList,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
