// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MasterQuestion _$$_MasterQuestionFromJson(Map<String, dynamic> json) =>
    _$_MasterQuestion(
      question: json['question'] as String,
      level: json['level'] as int,
      correctAnswer: json['correct_answer'] as int,
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_MasterQuestionToJson(_$_MasterQuestion instance) =>
    <String, dynamic>{
      'question': instance.question,
      'level': instance.level,
      'correct_answer': instance.correctAnswer,
      'answers': instance.answers,
    };
