// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'love.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Love _$$_LoveFromJson(Map<String, dynamic> json) => _$_Love(
      avaterImage: json['avaterImage'] as String? ?? '',
      name: json['name'] as String? ?? '',
      score: json['score'] as int? ?? 0,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$$_LoveToJson(_$_Love instance) => <String, dynamic>{
      'avaterImage': instance.avaterImage,
      'name': instance.name,
      'score': instance.score,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
