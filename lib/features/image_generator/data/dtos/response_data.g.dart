// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseData _$$_ResponseDataFromJson(Map<String, dynamic> json) =>
    _$_ResponseData(
      status: json['status'] as String,
      generationTime: (json['generationTime'] as num).toDouble(),
      id: json['id'] as int,
      output:
          (json['output'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ResponseDataToJson(_$_ResponseData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'generationTime': instance.generationTime,
      'id': instance.id,
      'output': instance.output,
    };
