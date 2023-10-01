// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionsInfo _$$_QuestionsInfoFromJson(Map<String, dynamic> json) =>
    _$_QuestionsInfo(
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => MasterQuestion.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      love: json['love'] == null
          ? const Love()
          : Love.fromJson(json['love'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestionsInfoToJson(_$_QuestionsInfo instance) =>
    <String, dynamic>{
      'questions': instance.questions,
      'love': instance.love,
    };
