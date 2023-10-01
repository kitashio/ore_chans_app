// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MasterQuestion _$$_MasterQuestionFromJson(Map<String, dynamic> json) =>
    _$_MasterQuestion(
      id: json['id'] as String,
      question: json['question'] as String,
      correctAnswer: json['correct_answer'] as int,
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_MasterQuestionToJson(_$_MasterQuestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'correct_answer': instance.correctAnswer,
      'answers': instance.answers,
    };
