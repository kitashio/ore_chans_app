// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'love.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Love _$$_LoveFromJson(Map<String, dynamic> json) => _$_Love(
      avaterImage: json['avaterImage'] as String? ?? '',
      name: json['name'] as String? ?? '',
      deviation: json['deviation'] as int? ?? 0,
      questionList: (json['questionList'] as List<dynamic>?)
              ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$$_LoveToJson(_$_Love instance) => <String, dynamic>{
      'avaterImage': instance.avaterImage,
      'name': instance.name,
      'deviation': instance.deviation,
      'questionList': instance.questionList,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
