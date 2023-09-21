// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tracker _$$_TrackerFromJson(Map<String, dynamic> json) => _$_Tracker(
      location: json['location'] as String? ?? '',
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_TrackerToJson(_$_Tracker instance) =>
    <String, dynamic>{
      'location': instance.location,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
